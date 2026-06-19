# syntax=docker/dockerfile:1.7-labs
#
# HybridRepair v2 — lightweight runtime image.
#
# This image bundles the hard-to-install runtime environment only:
#   - OpenJDK 17 (default, used to compile/run the patched Java sources)
#   - OpenJDK 21 (LogicFL pins jvm=/usr/lib/jvm/java-21-openjdk-amd64/bin/java)
#   - SWI-Prolog with JPL (libjpl.so) for the LogicFL fault localizer
#   - Python 3 + the project dependencies
#   - The application code and the small tracked datasets
#     (logicfl_dataset/, d4j-lib/)
#
# The heavy Defects4J corpus (~4.7 GB) is NOT baked in. Mount it at runtime:
#   docker run -v /path/to/defects4j:/opt/hybridrepair/defects4j ...
# See README.md and docker-compose.yml for the full workflow.

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Etc/UTC

# ── System dependencies ────────────────────────────────────────────────────────
# software-properties-common is needed for add-apt-repository (SWI-Prolog PPA).
RUN apt-get update && apt-get install -y --no-install-recommends \
        software-properties-common ca-certificates gnupg \
        wget unzip bash \
    && add-apt-repository -y ppa:swi-prolog/stable \
    && apt-get update && apt-get install -y --no-install-recommends \
        openjdk-17-jdk \
        openjdk-21-jdk \
        swi-prolog \
        swi-prolog-java \
        python3 python3-venv python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Default java/javac → 17 (matches the known-working compile/test setup).
# Java 21 stays available at /usr/lib/jvm/java-21-openjdk-amd64 for LogicFL.
RUN update-alternatives --set java  /usr/lib/jvm/java-17-openjdk-amd64/bin/java \
 && update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac

# Ensure libjpl.so is discoverable at the path LogicFL hardcodes.
# (The SWI-Prolog PPA ships it under /usr/lib/swi-prolog/lib/<arch>/.)
RUN set -eux; \
    jpl="$(find /usr/lib/swi-prolog -name libjpl.so 2>/dev/null | head -1)"; \
    target=/usr/lib/swi-prolog/lib/x86_64-linux/libjpl.so; \
    if [ -n "$jpl" ] && [ "$jpl" != "$target" ]; then \
        mkdir -p "$(dirname "$target")"; ln -sf "$jpl" "$target"; \
    fi

ENV HYBRIDREPAIR_HOME=/opt/hybridrepair
WORKDIR ${HYBRIDREPAIR_HOME}

# ── Python dependencies (own layer for build caching) ───────────────────────────
COPY requirements.txt ./
RUN python3 -m venv /opt/venv \
 && /opt/venv/bin/pip install --no-cache-dir --upgrade pip \
 && /opt/venv/bin/pip install --no-cache-dir -r requirements.txt
ENV PATH="/opt/venv/bin:${PATH}"

# ── Large, rarely-changing datasets (isolated cache layers) ─────────────────────
# Copied before the app code so that editing code does not invalidate (and force
# a re-pull of) these ~985 MB. They change very rarely.
COPY d4j-lib/ ./d4j-lib/
COPY logicfl_dataset/ ./logicfl_dataset/

# ── Application code (small final layer) ────────────────────────────────────────
# Everything else from the context except the datasets already copied above.
# A code/entrypoint change only rebuilds and re-pulls this small layer.
# .dockerignore still excludes defects4j, pipeline_results, .venv, .git, .env.
# The relative `lib -> logicfl_dataset/lib` symlink is preserved.
COPY --exclude=d4j-lib --exclude=logicfl_dataset . .

# Stream stdout/stderr unbuffered so pipeline logs appear line-by-line in real
# time (no need to pass -e PYTHONUNBUFFERED=1 or -t at run time).
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/opt/hybridrepair/docker/entrypoint.sh"]
CMD ["--help"]
