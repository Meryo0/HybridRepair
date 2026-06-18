#!/usr/bin/env bash
#
# Container entrypoint for HybridRepair v2.
#
# Defects4J config.properties files carry an absolute `base.dir=` baked in at
# generation time (e.g. /home/<user>/.../defects4j/<Bug>). Inside the container
# the corpus lives at $HYBRIDREPAIR_HOME/defects4j, so we normalise base.dir for
# every mounted bug before handing control to the pipeline. The rewrite is
# idempotent — re-running with the same mount is a no-op.
#
# All arguments are forwarded verbatim to repair_bug.py, e.g.:
#   docker run ... hybridrepair Chart-2 --skip-logicfl
set -euo pipefail

HOME_DIR="${HYBRIDREPAIR_HOME:-/opt/hybridrepair}"
D4J_DIR="${HOME_DIR}/defects4j"

normalise_base_dirs() {
    if [ ! -d "${D4J_DIR}" ] || [ -z "$(ls -A "${D4J_DIR}" 2>/dev/null || true)" ]; then
        echo "[entrypoint] WARNING: ${D4J_DIR} is empty or not mounted." >&2
        echo "[entrypoint]          Mount it with: -v /host/defects4j:${D4J_DIR}" >&2
        echo "[entrypoint]          (only the LogicFL phase needs it; --skip-logicfl with cached results does not)" >&2
        return
    fi

    local count=0
    for cfg in "${D4J_DIR}"/*/config.properties; do
        [ -e "${cfg}" ] || continue
        local bug_dir bug_name
        bug_dir="$(dirname "${cfg}")"
        bug_name="$(basename "${bug_dir}")"
        # Rewrite the base.dir line in place to the container path.
        if grep -q '^base.dir=' "${cfg}"; then
            sed -i "s#^base.dir=.*#base.dir=${D4J_DIR}/${bug_name}#" "${cfg}"
            count=$((count + 1))
        fi
    done
    echo "[entrypoint] Normalised base.dir in ${count} config.properties → ${D4J_DIR}/<Bug>"
}

normalise_base_dirs

cd "${HOME_DIR}"

# Dispatch: if the first argument is a Python script (e.g. run_all_bugs.py),
# run it directly; otherwise default to repair_bug.py with the given args
# (e.g. Chart-2 --skip-logicfl).
case "${1:-}" in
    *.py)
        exec python "$@"
        ;;
    *)
        exec python repair_bug.py "$@"
        ;;
esac
