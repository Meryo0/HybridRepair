#!/usr/bin/env bash
set -uo pipefail

# Run LogicFL only for the selected Defects4J bugs.
selected=(
  "Chart-2"
  "Chart-4"
  "Chart-14"
  "Chart-16"
  "Cli-5"
  "Cli-30"
  "Closure-2"
  "Closure-171"
  "Codec-5"
  "Codec-13"
  "Codec-17"
  "Csv-4"
  "Csv-9"
  "Csv-11"
  "Gson-6"
  "Gson-9"
  "JacksonCore-8"
  "JacksonDatabind-3"
  "JacksonDatabind-13"
  "JacksonDatabind-80"
  "JacksonDatabind-93"
  "JacksonDatabind-95"
  "JacksonDatabind-107"
  "Jsoup-8"
  "Jsoup-22"
  "Jsoup-26"
  "Jsoup-66"
  "Jsoup-89"
  "Lang-20"
  "Lang-33"
  "Lang-39"
  "Lang-47"
  "Lang-57"
  "Math-4"
  "Math-70"
  "Math-79"
  "Mockito-18"
  "Mockito-38"
)

failed=()
total_passed_classes=0
total_failed_classes=0
total_failed_tests=0
bugs_with_test_results=0
bugs_without_test_results=0

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
base_dir="$root_dir/defects4j"

print_test_results() {
  local bug_name="$1"
  local bug_dir="$2"
  local tests_file="$bug_dir/tests.json"

  if [[ ! -f "$tests_file" ]]; then
    echo "Test results ($bug_name): tests.json not found"
    ((bugs_without_test_results += 1))
    return
  fi

  local passed_class_count
  local failed_class_count
  local failed_test_count

  passed_class_count=$(sed -n '/"passed.classes": \[/,/\]/p' "$tests_file" | grep -c '"[^"]\+"' || true)
  failed_class_count=$(sed -n '/"failed.classes": \[/,/\]/p' "$tests_file" | grep -c '"[^"]\+"' || true)
  failed_test_count=$(sed -n '/"failed.tests": \[/,/\]/p' "$tests_file" | grep -c '"name":' || true)

  ((total_passed_classes += passed_class_count))
  ((total_failed_classes += failed_class_count))
  ((total_failed_tests += failed_test_count))
  ((bugs_with_test_results += 1))

  echo "Test results ($bug_name):"
  echo "  Passed test classes: $passed_class_count"
  echo "  Failed test classes: $failed_class_count"
  echo "  Failed tests: $failed_test_count"

  if [[ "$failed_test_count" -gt 0 ]]; then
    echo "  Failed test list:"
    awk '
      /"failed.tests": \[/ { in_failed = 1; next }
      in_failed && /\]/ { in_failed = 0 }
      in_failed && /"class":/ {
        match($0, /"class": "[^"]+"/)
        class_name = substr($0, RSTART + 10, RLENGTH - 11)
      }
      in_failed && /"name":/ {
        match($0, /"name": "[^"]+"/)
        test_name = substr($0, RSTART + 9, RLENGTH - 10)
        printf("    - %s::%s\n", class_name, test_name)
      }
    ' "$tests_file"
  fi
}

for bug in "${selected[@]}"; do
  bug_dir="$base_dir/$bug"
  echo "========================================"
  echo "Running LogicFL for: $bug"

  if [[ ! -d "$bug_dir" ]]; then
    echo "Skipping $bug: directory not found at $bug_dir"
    continue
  fi

  if [[ ! -x "$bug_dir/logic_fl.sh" ]]; then
    echo "Skipping $bug: missing executable script $bug_dir/logic_fl.sh"
    continue
  fi

  (
    cd "$bug_dir"
    ./logic_fl.sh
  ) || failed+=("$bug")

  print_test_results "$bug" "$bug_dir"

  echo "Completed: $bug"
  echo "========================================"
  echo
 done

echo "Selected LogicFL runs completed."
echo "----------------------------------------"
echo "Aggregate test summary (selected bugs):"
echo "  Bugs with tests.json: $bugs_with_test_results"
echo "  Bugs without tests.json: $bugs_without_test_results"
echo "  Total passed test classes: $total_passed_classes"
echo "  Total failed test classes: $total_failed_classes"
echo "  Total failed tests: $total_failed_tests"
if [[ ${#failed[@]} -gt 0 ]]; then
  echo "Failures detected in: ${failed[*]}"
  exit 1
fi
