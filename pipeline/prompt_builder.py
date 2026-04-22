"""Build LLM repair prompts from LogicFL analysis results.

Assembles a structured Italian/English prompt that provides the LLM with:
- Fault locations (class + line)
- Causal chains from LogicFL
- Annotated Java source snippets
- Failing test info
- Stack traces
- Previous failed attempts (for retry loops)
"""

from __future__ import annotations

from pathlib import Path
from typing import List, Optional

from pipeline import logicfl_parser, code_extractor
from pipeline.logicfl_parser import LogicFLResult


def _format_fault_locations(fault_locations: List[dict]) -> str:
    if not fault_locations:
        return "(nessuna fault location trovata)"
    lines = []
    for fl in fault_locations:
        fp = fl["file_path"]
        exists = "✓" if fp.exists() else "✗ (file non trovato)"
        lines.append(f"  • {fl['class']} — riga {fl['line']}  [{exists}]")
    return "\n".join(lines)


def _format_causal_chains(causal_chains: List[str]) -> str:
    if not causal_chains:
        return "(nessuna catena causale disponibile)"
    return "\n\n".join(causal_chains)


def _format_failing_tests(failing_tests: List[dict]) -> str:
    if not failing_tests:
        return "(nessun test fallito noto)"
    lines = []
    for t in failing_tests:
        lines.append(f"  • {t['class']}#{t['method']}")
    return "\n".join(lines)


def _format_previous_failures(previous_failures: List[str]) -> str:
    blocks = []
    for i, failure in enumerate(previous_failures, start=1):
        blocks.append(f"### Tentativo {i}\n{failure}")
    return "\n\n".join(blocks)


def _build_source_section(fault_locations: List[dict]) -> str:
    """Extract and annotate Java source for each fault location."""
    if not fault_locations:
        return "(nessun sorgente disponibile)"

    # Group fault locations by file to extract each file only once
    by_file: dict[Path, List[int]] = {}
    for fl in fault_locations:
        fp = fl["file_path"]
        by_file.setdefault(fp, []).append(fl["line"])

    sections: List[str] = []
    for java_file, lines in by_file.items():
        if not java_file.exists():
            sections.append(
                f"### {java_file.name}\n[ERRORE] File non trovato: {java_file}"
            )
            continue

        file_sections: List[str] = []
        for target_line in sorted(lines):
            snippet = code_extractor.extract_method_context(java_file, target_line)
            file_sections.append(
                f"#### Metodo contenente riga {target_line}\n```java\n{snippet}\n```"
            )

        sections.append(f"### {java_file.name}\n" + "\n\n".join(file_sections))

    return "\n\n".join(sections)


def _build_related_sources(fault_locations: List[dict], max_lines_per_file: int = 150) -> str:
    """Include abbreviated content of sibling Java files in the same source tree.

    Shows at most 3 sibling files, each capped at max_lines_per_file lines.
    This is important when the fix requires modifying a helper class that
    the faulty class calls (e.g., StringUtils in Codec-13).
    """
    if not fault_locations:
        return ""

    # Collect all unique source roots from fault locations
    seen_dirs: set[Path] = set()
    for fl in fault_locations:
        fp = fl["file_path"]
        if fp.parent.exists():
            seen_dirs.add(fp.parent)

    # Also look up one level (e.g., language/ → binary/ for StringUtils)
    extra_dirs: set[Path] = set()
    for d in seen_dirs:
        parent = d.parent
        for sibling in parent.iterdir():
            if sibling.is_dir() and sibling not in seen_dirs:
                extra_dirs.add(sibling)

    fault_files = {fl["file_path"] for fl in fault_locations}
    candidates: List[Path] = []

    for search_dir in list(seen_dirs) + list(extra_dirs):
        for jf in sorted(search_dir.glob("*.java")):
            if jf not in fault_files and jf not in candidates:
                candidates.append(jf)

    if not candidates:
        return ""

    # Heuristic: prefer files whose name appears in the fault class source
    primary_source = None
    for fl in fault_locations:
        if fl["file_path"].exists():
            primary_source = fl["file_path"].read_text(encoding="utf-8", errors="replace")
            break

    if primary_source:
        _UTILITY_KEYWORDS = {"utils", "util", "helper", "safe", "string", "char", "sequence"}

        def _relevance(p: Path) -> int:
            stem_lower = p.stem.lower()
            score = 0
            # Highest: explicitly imported or referenced in fault source
            if p.stem in primary_source:
                score += 20
            # Utility/helper pattern in name (often has null-safe methods)
            if any(kw in stem_lower for kw in _UTILITY_KEYWORDS):
                score += 8
            # Extra bonus for cross-package files (same-pkg files visible in main source section)
            if p.parent not in seen_dirs:
                score += 2
            # Prefer shorter/more focused files
            try:
                nlines = len(p.read_text(encoding="utf-8", errors="replace").splitlines())
                score -= nlines // 50
            except Exception:
                pass
            return -score  # negate: higher score → earlier in list
        candidates.sort(key=_relevance)


    # Take top 5
    shown: List[str] = []
    for jf in candidates[:5]:
        try:
            lines = jf.read_text(encoding="utf-8", errors="replace").splitlines()
            preview = lines[:max_lines_per_file]
            truncated = len(lines) > max_lines_per_file
            content = "\n".join(preview)
            if truncated:
                content += f"\n... (troncato a {max_lines_per_file} righe su {len(lines)})"
            shown.append(f"### {jf.name}\n```java\n{content}\n```")
        except Exception:
            pass

    if not shown:
        return ""

    return (
        "\n## File Correlati (stesso progetto — potrebbero servire per il fix)\n\n"
        + "\n\n".join(shown)
    )


def build_repair_prompt(
    result: LogicFLResult,
    attempt: int = 1,
    previous_failures: Optional[List[str]] = None,
) -> str:
    """Build the full LLM repair prompt for a bug.

    Args:
        result:            Parsed LogicFL output for the bug.
        attempt:           Current attempt number (1-based).
        previous_failures: List of failure descriptions from previous attempts.

    Returns:
        The complete prompt string ready to send to the LLM.
    """
    previous_failures = previous_failures or []

    fault_locs_text = _format_fault_locations(result.fault_locations)
    causal_chains_text = _format_causal_chains(result.causal_chains)
    source_section = _build_source_section(result.fault_locations)
    related_sources_section = _build_related_sources(result.fault_locations)
    failing_tests_text = _format_failing_tests(result.failing_tests)
    stack_traces_text = result.stack_traces.strip() or "(nessuno stack trace disponibile)"

    previous_failures_section = ""
    if attempt > 1 and previous_failures:
        prev_text = _format_previous_failures(previous_failures)
        previous_failures_section = f"""
## Tentativi Precedenti Falliti

I seguenti patch generati non hanno superato i test:

{prev_text}
"""

    prompt = f"""Sei un esperto Java developer. Il tuo compito è correggere un bug NullPointerException
in un programma Java reale, estratto dal benchmark Defects4J.

Bug ID: {result.bug_id}
Tentativo: {attempt}

## Analisi del Bug (fornita da LogicFL)

LogicFL è un sistema di Fault Localization basato su inferenze logiche.
Ha identificato le seguenti fault locations:

{fault_locs_text}

Catena causale dedotta:
{causal_chains_text}

## Codice Sorgente Buggy

{source_section}
{related_sources_section}
## Test che Falliscono

{failing_tests_text}

## Stack Trace

```
{stack_traces_text}
```
{previous_failures_section}
## Istruzioni

1. Genera SOLO la patch minimale per correggere l'NPE.
2. ATTENZIONE: la riga segnalata come `// ► FAULT LOCATION` è dove l'NPE si **manifesta** nel test,
   ma la causa radice può essere a monte (es. variabili calcolate in modo errato nel loop prima
   di raggiungere quella riga, o un metodo chiamato che può ritornare null).
   Analizza l'intera logica del metodo e considera se il fix richiede di modificare
   il metodo chiamante o aggiungere metodi helper null-safe.
3. Se la fix è null-safe comparison, ricorda: `null == null` deve ritornare `true`
   (un confronto del tipo `a != null && a.equals(b)` ritorna `false` quando entrambi sono null,
   il che può essere sbagliato semanticamente).
4. La patch può modificare **più file** se necessario — usa blocchi `--- / +++` separati per ogni file.
5. NON modificare file di test.
6. La patch DEVE far passare tutti i test falliti senza rompere i test che già passano.
7. Restituisci la patch come unified diff (formato `diff -u`).
8. IMPORTANTE: usa le righe di codice ESATTE del file sorgente nei blocchi di contesto del diff.
   Le righe con `// ► FAULT LOCATION` nei commenti del codice sorgente sono solo indicatori per te;
   NON includerle nel diff — il diff deve contenere solo le righe Java originali senza commenti aggiuntivi.
9. Usa il formato diff standard (NON git format): le righe `---` e `+++` devono iniziare
   con un percorso relativo come `org/apache/commons/codec/language/DoubleMetaphone.java`, non con `a/` o `b/`.

## Formato Risposta

Restituisci ESCLUSIVAMENTE il contenuto del diff, iniziando con `---` e finendo
con l'ultimo blocco `+++`. Nessuna spiegazione, nessun markdown, solo il diff grezzo.
"""
    return prompt.strip()


# ── New VibeRepair-style: generate corrected method, not a diff ──────────────────

def build_method_repair_prompt(
    result: LogicFLResult,
    attempt: int = 1,
) -> str:
    """Build the initial prompt for the VibeRepair-style session.

    Unlike build_repair_prompt(), this asks the LLM to return the
    *complete corrected method(s)* in FILE blocks, not a unified diff.
    Python will build the diff from the returned code.

    Args:
        result:  Parsed LogicFL output.
        attempt: Current attempt number (for display only; the refinement
                 loop is handled by RepairSession.refine(), not this function).

    Returns:
        The user-turn prompt string for RepairSession.first_attempt().
    """
    fault_locs_text = _format_fault_locations(result.fault_locations)
    causal_chains_text = _format_causal_chains(result.causal_chains)
    failing_tests_text = _format_failing_tests(result.failing_tests)
    stack_traces_text = result.stack_traces.strip() or "(nessuno stack trace disponibile)"
    related_sources_section = _build_related_sources(result.fault_locations)

    # Build per-method sections: clean Java source + relative path for FILE: header
    method_sections: List[str] = []
    seen_files: set = set()
    # Also collect (file, start_1, end_1) metadata for the pipeline to use
    method_meta: List[dict] = []

    by_file: dict = {}
    for fl in result.fault_locations:
        by_file.setdefault(fl["file_path"], []).append(fl["line"])

    for java_file, lines in by_file.items():
        if not java_file.exists():
            continue
        if java_file in seen_files:
            continue
        seen_files.add(java_file)

        rel = _derive_relative_path(java_file)

        for target_line in sorted(lines):
            snippet, start_1, end_1 = code_extractor.extract_method_source(java_file, target_line)
            method_sections.append(
                f"### FILE: {rel}  (righe {start_1}–{end_1}, fault alla riga {target_line})\n"
                f"```java\n{snippet}\n```"
            )
            method_meta.append({
                "file": java_file,
                "relative_path": rel,
                "start_1": start_1,
                "end_1": end_1,
                "target_line": target_line,
            })

    methods_block = "\n\n".join(method_sections) if method_sections else "(nessun metodo estratto)"

    prompt = f"""Bug ID: {result.bug_id}  |  Tentativo {attempt}

## Fault Locations (LogicFL)

{fault_locs_text}

## Catena Causale (LogicFL Prolog)

{causal_chains_text}

## Metodi Buggy

{methods_block}
{related_sources_section}
## Test Falliti

{failing_tests_text}

## Stack Trace

```
{stack_traces_text}
```

## Istruzioni

Analizza il bug e restituisci i metodi corretti, seguendo queste regole TASSATIVE:

1. **Un FILE block per metodo**: se devi correggere N metodi, emetti N blocchi FILE separati.
   Ogni blocco deve contenere UN SOLO metodo completo.

2. **Indentazione originale**: mantieni ESATTAMENTE l'indentazione del codice originale.
   La firma del metodo DEVE iniziare con gli stessi spazi del file originale.

3. **La riga `// ◄ FIX THIS LINE`** indica dove l'NPE si manifesta. Rimuovi questo commento
   nella risposta — restituisci solo codice Java puro.

4. **Null-safe equality OBBLIGATORIA**: se il metodo confronta due valori che possono essere null,
   usa `java.util.Objects.equals(a, b)` — questa funzione ritorna `true` se entrambi sono null,
   mentre `a.equals(b)` lancia NPE se `a` è null, e `a != null && a.equals(b)` ritorna `false`
   se entrambi sono null (sbagliato semanticamente).
   Esempio corretto:
   ```java
   return java.util.Objects.equals(doubleMetaphone(v1, alt), doubleMetaphone(v2, alt));
   ```

5. **NON modificare metodi che non causano il bug**: se il metodo `doubleMetaphone` ritorna
   null per input null, questo è il comportamento CORRETTO e atteso dai test. Non cambiarlo.

6. NON modificare file di test.
"""
    return prompt.strip()


def _derive_relative_path(java_file: Path) -> str:
    """Derive the Java-relative path (org/example/Foo.java) from an absolute path."""
    parts = java_file.parts
    # Find the first segment that looks like a Java package root
    for i, part in enumerate(parts):
        if part in ("java", "source", "src") and i + 1 < len(parts):
            # Check if next segment is 'main' (Maven) or directly a package
            candidate = parts[i + 1]
            if candidate == "main" and i + 2 < len(parts) and parts[i + 2] == "java":
                return str(Path(*parts[i + 3:]))
            elif candidate not in ("test", "resources"):
                return str(Path(*parts[i + 1:]))
    # Fallback: return just the filename
    return java_file.name


