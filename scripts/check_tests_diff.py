import os
import filecmp
import sys

def get_test_dir(properties_file):
    with open(properties_file, 'r') as f:
        for line in f:
            if line.startswith('d4j.dir.src.tests='):
                return line.strip().split('=')[1]
    return None

def main():
    # Repo root is the parent of the scripts/ directory this file lives in.
    workspace_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    defects4j_dir = os.path.join(workspace_dir, 'defects4j')
    projects = [p for p in os.listdir(defects4j_dir) if os.path.isdir(os.path.join(defects4j_dir, p)) and not p.startswith('_')]
    
    different_tests = []
    
    for project in sorted(projects):
        project_dir = os.path.join(defects4j_dir, project)
        buggy_dir = os.path.join(project_dir, 'buggy')
        fixed_dir = os.path.join(project_dir, 'fixed')
        
        properties_file = os.path.join(buggy_dir, 'defects4j.build.properties')
        if not os.path.exists(properties_file):
            print(f"[{project}] Warning: defects4j.build.properties not found.")
            continue
            
        test_dir_rel = get_test_dir(properties_file)
        if not test_dir_rel:
            print(f"[{project}] Warning: d4j.dir.src.tests not found in properties.")
            continue
            
        buggy_tests = os.path.join(buggy_dir, test_dir_rel)
        fixed_tests = os.path.join(fixed_dir, test_dir_rel)
        
        if not os.path.exists(buggy_tests):
            print(f"[{project}] Warning: buggy tests directory {buggy_tests} not found.")
            continue
        if not os.path.exists(fixed_tests):
            print(f"[{project}] Warning: fixed tests directory {fixed_tests} not found.")
            continue
            
        # Compare directories
        dcmp = filecmp.dircmp(buggy_tests, fixed_tests)
        
        has_diff = False
        def check_diff(cmp):
            nonlocal has_diff
            if cmp.left_only or cmp.right_only or cmp.diff_files or cmp.funny_files:
                has_diff = True
                return
                
            # Verifica profonda (deep comparison) sui file apparentemente uguali
            for f in cmp.same_files:
                f1 = os.path.join(cmp.left, f)
                f2 = os.path.join(cmp.right, f)
                if not filecmp.cmp(f1, f2, shallow=False):
                    has_diff = True
                    return
                    
            for sub_dcmp in cmp.subdirs.values():
                check_diff(sub_dcmp)
                
        check_diff(dcmp)
        
        if has_diff:
            print(f"[{project}] Test directories are DIFFERENT.")
            different_tests.append(project)
        else:
            print(f"[{project}] Test directories are IDENTICAL.")
            
    print("\nSummary:")
    if different_tests:
        print(f"Found {len(different_tests)} projects with different test directories: {', '.join(different_tests)}")
    else:
        print("All projects have identical test directories between buggy and fixed versions.")

if __name__ == '__main__':
    main()
