# HybridRepair v2

HybridRepair is an agent-based Automated Program Repair (APR) pipeline designed to
resolve NullPointerException (NPE) bugs. It combines semantic fault localization
(LogicFL) with Large Language Model (LLM) reasoning and tool-use agents to generate
and apply AST-based source code patches autonomously.

The pipeline has three phases: **FaultOracle** (LogicFL fault localization) →
**SpecReason** (chain-of-thought repair specification) → **PatchAgent** (an agentic
loop that edits, compiles, and tests candidate patches).

---

## Quick start with Docker (recommended)

A pre-built image is published publicly on the GitHub Container Registry, so you do
**not** need to install Java, SWI-Prolog/JPL, or Python yourself.

### 1. Prerequisites
- **Docker** (only this — everything else is inside the image).
- An **Azure OpenAI** deployment (endpoint, key, deployment name).
- The **Defects4J corpus** used by this project (~4.7 GB — see step 4).

### 2. Pull the image
```bash
docker pull ghcr.io/meryo0/hybridrepair:latest
```

### 3. Configure your LLM credentials
Create a file named `.env` (you can copy `.env.example`) with your Azure OpenAI
values:
```ini
AZURE_OPENAI_API_KEY=your_key_here
AZURE_OPENAI_ENDPOINT=https://your-resource.openai.azure.com/
AZURE_OPENAI_DEPLOYMENT=gpt-4o
AZURE_OPENAI_API_VERSION=2024-02-01
```

### 4. Get the Defects4J corpus
The corpus (the `defects4j/` folder with one directory per bug, e.g. `Chart-2/`) is
**not** bundled in the image or the git repository because of its size (~4.7 GB). It
is published as a split archive on the
[v1.0.0 release](https://github.com/Meryo0/HybridRepair/releases/tag/v1.0.0)
(GitHub caps release assets at 2 GB per file, so it ships in two parts).

Run all of the following **from inside the cloned `HybridRepair/` folder**, so the
corpus is assembled at `HybridRepair/defects4j/` (that's where the run commands
below expect it):
```bash
cd HybridRepair            # the cloned project root

# download both parts here (GitHub CLI)
gh release download v1.0.0 --repo Meryo0/HybridRepair -p 'defects4j.tar.gz.part-*'
# ...or with wget:
# wget https://github.com/Meryo0/HybridRepair/releases/download/v1.0.0/defects4j.tar.gz.part-00
# wget https://github.com/Meryo0/HybridRepair/releases/download/v1.0.0/defects4j.tar.gz.part-01

# reassemble the parts and extract — creates ./defects4j inside HybridRepair/
cat defects4j.tar.gz.part-* | tar xzf -

# remove the downloaded parts (no longer needed)
rm defects4j.tar.gz.part-*
```

You should now have `HybridRepair/defects4j/` containing the bug folders. (If you
already have the corpus on another machine you can just copy that folder in instead,
e.g. `rsync -a host:/path/HybridRepair/defects4j .` — again from inside
`HybridRepair/`.)

### 5. Run a bug
Mount your corpus and the output directory, pass your `.env`, and give a bug id.
Anything after the image name is forwarded to the pipeline.
```bash
docker run --rm \
  --env-file .env \
  -v "$(pwd)/defects4j:/opt/hybridrepair/defects4j" \
  -v "$(pwd)/pipeline_results:/opt/hybridrepair/pipeline_results" \
  ghcr.io/meryo0/hybridrepair:latest Chart-2 --skip-logicfl
```
- `Chart-2` is the bug id (others: `Gson-6`, `Csv-4`, `Lang-33`, …).
- `--skip-logicfl` reuses the fault-localization results cached in the corpus
  (`defects4j/<Bug>/result/`). Drop it to re-run LogicFL from scratch (slower; needs
  the full Java 21 + SWI-Prolog/JPL stack, all of which are baked into the image).
- The container entrypoint automatically rewrites the absolute `base.dir` paths
  inside each mounted `config.properties` to the in-container location — no manual
  path editing required.
- Pipeline output streams **line-by-line** in real time (the image sets
  `PYTHONUNBUFFERED=1`). On an older pulled image you can force it with
  `-e PYTHONUNBUFFERED=1` in the `docker run` command.

> **Note:** running against a mounted corpus rewrites its `base.dir` lines to the
> container path. If you also run the pipeline natively against the *same* folder,
> use a separate copy for the container.

### Run all bugs (batch)
Pass a Python entry script instead of a bug id and the container runs that
instead of the single-bug pipeline. To process every bug in the corpus:
```bash
docker run --rm \
  --env-file .env \
  -v "$(pwd)/defects4j:/opt/hybridrepair/defects4j" \
  -v "$(pwd)/pipeline_results:/opt/hybridrepair/pipeline_results" \
  ghcr.io/meryo0/hybridrepair:latest run_all_bugs.py
```
`run_all_bugs.py` runs `repair_bug.py <bug> --skip-logicfl` over every bug folder
and prints a PASS/FAIL summary at the end.

### Using docker compose
Paths are preset in `docker-compose.yml`; override `DEFECTS4J_HOST` if your corpus
lives elsewhere:
```bash
DEFECTS4J_HOST=/abs/path/to/defects4j docker compose run --rm repair Chart-2 --skip-logicfl
# or the whole batch:
DEFECTS4J_HOST=/abs/path/to/defects4j docker compose run --rm repair run_all_bugs.py
```

### Where the output goes
Results — agent iterations, generated specs, patches (`patch.diff`), JUnit results,
and a `final_report.json` — are written under `pipeline_results/<Bug-Id>/` on the
host (via the mounted volume).

---

## Alternative: build the image yourself
If you'd rather build locally instead of pulling from GHCR:
```bash
docker build -t hybridrepair .
docker run --rm --env-file .env \
  -v "$(pwd)/defects4j:/opt/hybridrepair/defects4j" \
  -v "$(pwd)/pipeline_results:/opt/hybridrepair/pipeline_results" \
  hybridrepair Chart-2 --skip-logicfl
```

## Alternative: native install (without Docker)
For development on the host directly. You must install the full toolchain yourself:

- **Python 3.10+** — create a venv and install dependencies (`uv` recommended):
  ```bash
  uv venv .venv && source .venv/bin/activate && uv pip install -r requirements.txt
  # or: python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt
  ```
- **Java 17** (compile/run patches) and **Java 21** at
  `/usr/lib/jvm/java-21-openjdk-amd64` (LogicFL's pinned `jvm`).
- **SWI-Prolog with JPL** — install both `swi-prolog` *and* `swi-prolog-java` so that
  `libjpl.so` lands in `/usr/lib/swi-prolog/lib/x86_64-linux/` (the path LogicFL
  expects). On Ubuntu: `sudo add-apt-repository ppa:swi-prolog/stable`.
- Get the **Defects4J corpus** as in step 4 above.

Then run from the repo root:
```bash
python repair_bug.py Chart-2 --skip-logicfl   # single bug
python run_all_bugs.py                         # batch over all bugs
```

---

## Project structure
- `patch_agent/` — the autonomous loop that edits, compiles, tests, and iterates on patches.
- `reasoner/` — collects ingredients and builds the chain-of-thought repair specifications.
- `fault_oracle/` — wraps LogicFL execution, parses its output, and semantically grounds the Prolog AST findings.
- `services/` — Azure client, sandbox compile/test evaluator, reporter.
- `shared/` — shared config and data models (`RepairResult`, `FaultReport`, …).
- `scripts/` — analysis helpers (`compare_patches.py`, `compare_bugs.py`, `check_tests_diff.py`).
- `Dockerfile`, `docker-compose.yml`, `docker/` — containerised runtime.
- `docs/README_LogicFL.md` — original LogicFL replication-package instructions for running the fault localizer manually.
