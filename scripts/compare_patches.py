import os
import json
from pathlib import Path

# Anchor all paths to the repo root (parent of scripts/) so this works
# regardless of the current working directory.
REPO_ROOT = Path(__file__).resolve().parent.parent

bugs = [
    "Csv-4", "Csv-9", "Csv-11",
    "Jsoup-8", "Jsoup-26", "Jsoup-89",
    "JacksonDatabind-3", "JacksonDatabind-13", "JacksonDatabind-80", 
    "JacksonDatabind-93", "JacksonDatabind-95", "JacksonCore-8",
    "Chart-4", "Cli-5", "Math-4", "Closure-2", "Lang-39", "Codec-17"
]

def read_file(path):
    try:
        with open(path, 'r') as f:
            return f.read()
    except Exception as e:
        return f"Error: {e}"

for bug in bugs:
    print(f"==================== {bug} ====================")
    
    # Get ground truth
    gt_path = str(REPO_ROOT / f"defects4j/{bug}/diff_{bug}.txt")
    if not os.path.exists(gt_path):
        print("Ground Truth: NOT FOUND")
    else:
        # Just grab the diff lines starting with + or -
        gt = read_file(gt_path).splitlines()
        gt_changes = [l for l in gt if l.startswith('+') or l.startswith('-')]
        print("Ground Truth Changes:")
        print('\n'.join(gt_changes[:30]))
        if len(gt_changes) > 30:
            print("...")
            
    # Get winning attempt
    report_path = str(REPO_ROOT / f"pipeline_results/{bug}/final_report.json")
    if os.path.exists(report_path):
        with open(report_path) as f:
            report = json.load(f)
            winning = report.get('winning_attempt')
            if winning is not None:
                patch_path = str(REPO_ROOT / f"pipeline_results/{bug}/attempt_{winning}/patch.diff")
                patch = read_file(patch_path).splitlines()
                patch_changes = [l for l in patch if (l.startswith('+') or l.startswith('-')) and not l.startswith('+++') and not l.startswith('---')]
                print("\nGenerated Patch Changes:")
                print('\n'.join(patch_changes[:30]))
                if len(patch_changes) > 30:
                    print("...")
            else:
                print("\nGenerated Patch: No winning attempt")
    else:
        print("\nGenerated Patch: No report")
    print("\n")
