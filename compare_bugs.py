import json
import os

our_38_bugs = [
    "Chart-2", "Chart-4", "Chart-14", "Chart-16", "Cli-5", "Cli-30", "Closure-2", "Closure-171", "Codec-5", "Codec-13", "Codec-17", "Csv-4", "Csv-9", "Csv-11", "Gson-6", "Gson-9", "JacksonCore-8", "JacksonDatabind-3", "JacksonDatabind-13", "JacksonDatabind-80", "JacksonDatabind-93", "JacksonDatabind-95", "JacksonDatabind-107", "Jsoup-8", "Jsoup-22", "Jsoup-26", "Jsoup-66", "Jsoup-89", "Lang-20", "Lang-33", "Lang-39", "Lang-47", "Lang-57", "Math-4", "Math-70", "Math-79", "Mockito-18", "Mockito-38"
]

vibe_sf = json.load(open('/home/mario/Desktop/VibeRepairRam-main/correct_patches/Defects4J/v2.0/single-function/correct_patch_sf_2.0.json'))
vibe_mf = json.load(open('/home/mario/Desktop/VibeRepairRam-main/correct_patches/Defects4J/v2.0/multi-function/correct_patch_mf_2.0.json'))

vibe_fixed = set([d['file'] for d in vibe_sf]) | set([d['file'] for d in vibe_mf])

our_fixed = set()
for bug in our_38_bugs:
    report_path = f'/home/mario/Desktop/HybridRepair/pipeline_results/{bug}/final_report.json'
    if os.path.exists(report_path):
        try:
            report = json.load(open(report_path))
            if report.get('success'):
                our_fixed.add(bug)
        except Exception as e:
            pass

vibe_our_overlap = set(our_38_bugs) & vibe_fixed

vibe_only = vibe_our_overlap - our_fixed
our_only = our_fixed - vibe_fixed
both = our_fixed & vibe_fixed
neither = set(our_38_bugs) - our_fixed - vibe_our_overlap

print("Bugs in our dataset (38):", len(our_38_bugs))
print("Fixed by VibeRepair (out of 38):", len(vibe_our_overlap))
print("Fixed by HybridRepair (out of 38):", len(our_fixed))
print("\n--- Fixed by BOTH ---")
print(", ".join(sorted(both)))
print("\n--- Fixed by VibeRepair ONLY (Lui corregge, noi NO) ---")
print(", ".join(sorted(vibe_only)))
print("\n--- Fixed by HybridRepair ONLY (Noi correggiamo, lui NO) ---")
print(", ".join(sorted(our_only)))
print("\n--- Fixed by NEITHER ---")
print(", ".join(sorted(neither)))
