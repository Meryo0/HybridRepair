"""Robust Azure OpenAI client for HybridRepair v2.

Provides a clean wrapper around the Azure OpenAI SDK with:
  - Automatic retry with exponential backoff on transient errors
  - Built-in tool-call loop (the client handles tool execution automatically)
  - Conversation history management
  - Token budget awareness

Extracted and refactored from pipeline/llm_patcher.py (RepairSession).
"""

from __future__ import annotations

import json
import time
from typing import Any, Callable, Dict, List, Optional

from openai import AzureOpenAI, RateLimitError, APITimeoutError, APIConnectionError

from shared import config


# ── Client singleton ─────────────────────────────────────────────────────────


def _create_raw_client() -> AzureOpenAI:
    """Instantiate the underlying Azure OpenAI SDK client."""
    if not config.AZURE_OPENAI_API_KEY:
        raise EnvironmentError(
            "AZURE_OPENAI_API_KEY is not set. "
            "Copy .env.example to .env and fill in your credentials."
        )
    if not config.AZURE_OPENAI_ENDPOINT:
        raise EnvironmentError(
            "AZURE_OPENAI_ENDPOINT is not set. "
            "Copy .env.example to .env and fill in your credentials."
        )
    return AzureOpenAI(
        api_key=config.AZURE_OPENAI_API_KEY,
        api_version=config.AZURE_OPENAI_API_VERSION,
        azure_endpoint=config.AZURE_OPENAI_ENDPOINT,
    )


# Tool executor type: takes (function_name, arguments_dict) → result string
ToolExecutor = Callable[[str, Dict[str, Any]], str]


class AzureClient:
    """High-level Azure OpenAI client with retry and tool-call handling.

    Usage:
        client = AzureClient()
        response = client.chat(messages)
        # or with tools:
        response = client.chat_with_tools(messages, tools, executor)
    """

    # Retry configuration
    MAX_RETRIES: int = 3
    BASE_DELAY: float = 2.0  # seconds

    def __init__(self) -> None:
        self._client = _create_raw_client()

    def chat(
        self,
        messages: List[Dict[str, Any]],
        *,
        temperature: Optional[float] = None,
        max_tokens: Optional[int] = None,
    ) -> str:
        """Send a chat completion request and return the text response.

        Args:
            messages: OpenAI-format message list.
            temperature: Override temperature (default from config).
            max_tokens: Override max tokens (default from config).

        Returns:
            The assistant's text response.
        """
        kwargs = self._build_kwargs(messages, temperature, max_tokens)
        response = self._call_with_retry(**kwargs)
        return response.choices[0].message.content or ""

    def chat_with_tools(
        self,
        messages: List[Dict[str, Any]],
        tools: List[Dict[str, Any]],
        tool_executor: ToolExecutor,
        *,
        temperature: Optional[float] = None,
        max_tokens: Optional[int] = None,
        max_tool_rounds: int = 10,
    ) -> tuple[str, List[Dict[str, Any]]]:
        """Chat completion with automatic tool-call loop.

        When the model requests tool calls, this method:
          1. Executes each tool via tool_executor
          2. Appends tool results to the conversation
          3. Re-sends to the model
          4. Repeats until the model produces a text response or max_tool_rounds

        Args:
            messages: OpenAI-format message list (will be MUTATED with tool results).
            tools: Tool definitions in OpenAI format.
            tool_executor: Callable that maps (function_name, args_dict) → result_str.
            temperature: Override temperature.
            max_tokens: Override max tokens.
            max_tool_rounds: Safety limit on tool-call rounds.

        Returns:
            A tuple of (final_text_response, updated_messages).
        """
        kwargs = self._build_kwargs(messages, temperature, max_tokens, tools=tools)

        for _round in range(max_tool_rounds):
            response = self._call_with_retry(**kwargs)
            message = response.choices[0].message

            # Append assistant message to history
            messages.append(message.model_dump(exclude_unset=True))

            if not message.tool_calls:
                # No tool calls → final text response
                return message.content or "", messages

            # Execute each tool call
            for tool_call in message.tool_calls:
                func_name = tool_call.function.name
                try:
                    args = json.loads(tool_call.function.arguments)
                except json.JSONDecodeError:
                    args = {}

                print(f"  [azure_client] Tool call: {func_name}({list(args.keys())})")
                try:
                    result = tool_executor(func_name, args)
                except Exception as exc:
                    result = f"Error executing {func_name}: {exc}"

                messages.append({
                    "role": "tool",
                    "tool_call_id": tool_call.id,
                    "name": func_name,
                    "content": result,
                })

            # Update kwargs with new messages for next round
            kwargs["messages"] = messages

        # Safety: if we exhaust tool rounds, return whatever we have
        print(f"  [azure_client] WARNING: exhausted {max_tool_rounds} tool rounds")
        return "", messages

    # ── Internal helpers ─────────────────────────────────────────────────────

    def _build_kwargs(
        self,
        messages: List[Dict[str, Any]],
        temperature: Optional[float],
        max_tokens: Optional[int],
        tools: Optional[List[Dict[str, Any]]] = None,
    ) -> Dict[str, Any]:
        """Build the kwargs dict for chat.completions.create()."""
        kwargs: Dict[str, Any] = {
            "model": config.AZURE_OPENAI_DEPLOYMENT,
            "messages": messages,
            "temperature": temperature if temperature is not None else config.LLM_TEMPERATURE,
            "max_tokens": max_tokens or config.LLM_MAX_TOKENS,
        }
        if tools:
            kwargs["tools"] = tools
        return kwargs

    def _call_with_retry(self, **kwargs: Any) -> Any:
        """Call the OpenAI API with exponential backoff on transient errors."""
        last_exc: Optional[Exception] = None

        for attempt in range(self.MAX_RETRIES):
            try:
                return self._client.chat.completions.create(**kwargs)
            except (RateLimitError, APITimeoutError, APIConnectionError) as exc:
                last_exc = exc
                delay = self.BASE_DELAY * (2 ** attempt)
                print(
                    f"  [azure_client] Transient error (attempt {attempt + 1}/{self.MAX_RETRIES}): "
                    f"{type(exc).__name__}. Retrying in {delay:.1f}s..."
                )
                time.sleep(delay)

        raise RuntimeError(
            f"Azure OpenAI API failed after {self.MAX_RETRIES} retries: {last_exc}"
        ) from last_exc
