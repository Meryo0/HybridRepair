"""Persistent conversation store in JSONL format.

Serializes the agent's full conversation history to disk so that:
  - Interrupted runs can be resumed without losing context.
  - Post-hoc analysis of agent decisions is possible.

Resolves P3 (history reset between attempts).
"""

from __future__ import annotations

import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional

from shared import config


def _store_dir(bug_id: str) -> Path:
    """Return the directory for conversation logs of a given bug."""
    return config.PIPELINE_RESULTS_DIR / bug_id / "conversations"


def save(
    bug_id: str,
    attempt: int,
    messages: List[Dict[str, Any]],
) -> Path:
    """Save a complete conversation to a JSONL file.

    Args:
        bug_id: Bug identifier.
        attempt: Attempt number.
        messages: Full conversation history.

    Returns:
        Path to the saved file.
    """
    store_dir = _store_dir(bug_id)
    store_dir.mkdir(parents=True, exist_ok=True)

    filename = f"attempt_{attempt}.jsonl"
    filepath = store_dir / filename

    with open(filepath, "w", encoding="utf-8") as fh:
        for msg in messages:
            line = json.dumps(msg, ensure_ascii=False, default=str)
            fh.write(line + "\n")

    print(f"  [conversation_store] Saved {len(messages)} messages to {filepath}")
    return filepath


def load(bug_id: str, attempt: int) -> List[Dict[str, Any]]:
    """Load a conversation from a JSONL file.

    Args:
        bug_id: Bug identifier.
        attempt: Attempt number.

    Returns:
        List of messages, or empty list if file doesn't exist.
    """
    filepath = _store_dir(bug_id) / f"attempt_{attempt}.jsonl"

    if not filepath.exists():
        return []

    messages: List[Dict[str, Any]] = []
    with open(filepath, "r", encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if line:
                messages.append(json.loads(line))

    print(f"  [conversation_store] Loaded {len(messages)} messages from {filepath}")
    return messages


def append(
    bug_id: str,
    attempt: int,
    message: Dict[str, Any],
) -> None:
    """Append a single message to the conversation log.

    Args:
        bug_id: Bug identifier.
        attempt: Attempt number.
        message: The message to append.
    """
    store_dir = _store_dir(bug_id)
    store_dir.mkdir(parents=True, exist_ok=True)

    filepath = store_dir / f"attempt_{attempt}.jsonl"
    with open(filepath, "a", encoding="utf-8") as fh:
        line = json.dumps(message, ensure_ascii=False, default=str)
        fh.write(line + "\n")


def get_failure_summary(bug_id: str, up_to_attempt: int) -> str:
    """Build a summary of all previous failed attempts.

    Used to inject into the agent's context so it doesn't repeat mistakes.
    This implements the ChatRepair-style conversational memory.

    Args:
        bug_id: Bug identifier.
        up_to_attempt: Include attempts 1..up_to_attempt-1.

    Returns:
        A formatted string summarizing previous failures.
    """
    summaries: List[str] = []

    for attempt_num in range(1, up_to_attempt):
        messages = load(bug_id, attempt_num)
        if not messages:
            continue

        # Extract the last assistant message (likely the patch)
        last_assistant = ""
        for msg in reversed(messages):
            if msg.get("role") == "assistant" and msg.get("content"):
                last_assistant = msg["content"][:500]
                break

        # Look for error info in tool results
        errors: List[str] = []
        for msg in messages:
            if msg.get("role") == "tool" and msg.get("content"):
                content = msg["content"]
                if "error" in content.lower() or "fail" in content.lower():
                    errors.append(content[:200])

        if last_assistant or errors:
            summary = f"### Attempt {attempt_num} (FAILED)\n"
            if errors:
                summary += f"Error: {errors[-1]}\n"
            summary += f"Approach tried: {last_assistant[:200]}...\n"
            summaries.append(summary)

    if not summaries:
        return ""

    return (
        "## PREVIOUS FAILED ATTEMPTS — DO NOT REPEAT THESE APPROACHES\n\n"
        + "\n".join(summaries)
    )
