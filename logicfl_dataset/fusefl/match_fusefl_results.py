import os
import json
import argparse
import re

def process_json_file(bug_id, trial_path, file_name):
    file_path = os.path.join(trial_path, file_name)                    

    with open(file_path, 'r') as json_file:
        data = json.load(json_file)

        fault_locs = []
        for entry in data['faultLoc']:
            loc = entry['faultyLine']
            className = loc[0:loc.index(':')]
            lineNum = int(loc[loc.index(':')+1:])
            fault_locs.append(f"{className}:{lineNum}")
    return fault_locs

def extract_json_part(text):
    # JSON result is between ```json and ```.
    pattern = r'```json(.*?)```'
    match = re.search(pattern, text, re.DOTALL)
    
    if match:
        json_str = match.group(1).strip()
        
        try:
            json_obj = json.loads(json_str)
            return json_obj
        except json.JSONDecodeError as e:
            print(f"Error decoding JSON: {e}")
            return None
    else:
        return None

def iterate_directory(base_directory):
    trials_directory = os.path.join(base_directory, "trials")        
    if not os.path.exists(trials_directory):
        print(f"Directory '{trials_directory}' does not exist.")
        return None
    
    total_fault_locs = {}
    for trial_folder in os.listdir(trials_directory):
        trial_path = os.path.join(trials_directory, trial_folder)        
        if os.path.isdir(trial_path):
            print(f"Found trial directory: {trial_folder}")            
            suffix = 'fault_locs.json'
            fault_locs = {}
            for file_name in os.listdir(trial_path):                
                if file_name.endswith(suffix):
                    index = file_name.index(suffix)
                    if index > 1:
                        bug_id = file_name[0:index-1]
                        bug_id = bug_id.replace('commons-io', 'commonsio')                            
                        try:
                            fault_locs[bug_id] = process_json_file(bug_id, trial_path, file_name)
                        except:
                            fault_locs[bug_id] = []
            total_fault_locs[trial_folder] = fault_locs

    return total_fault_locs

def get_best_result(results):
    best = None
    max_score = -1
    for i in range(len(results)):
        lst = results[i]
        score = 0
        for r in lst:
            if r == 'matched':
                score += 2
            elif r == 'partially_matched':
                score += 1
            else:
                score += 0
        if score > max_score:
            max_score = score
            best = lst
    return best    

def compare_fault_locs(fault_locs, benchmark):
    matched_result = {}
    for bug_id, real_locs in benchmark.items():
        # not_matched if there is no identified candidates.
        if bug_id not in fault_locs or len(fault_locs[bug_id]) == 0: 
            top10_result = ['not_matched' for i in range(10)]
            matched_result[bug_id] = top10_result
            continue

        bug_id_locs = fault_locs[bug_id]                
        candidates = bug_id_locs[0:10] # Only consider Top-10 candidates.
        if isinstance(bug_id_locs[0], list): #More than one possible answers.            
            results = []
            for locs in bug_id_locs:
                results.append(get_top10_result(locs, candidates))
            top10_result = get_best_result(results)
        else:
            top10_result = get_top10_result(real_locs, candidates)
        matched_result[bug_id] = top10_result
        
    return matched_result

def get_top10_result(real_locs, candidates):
    matched = set()
    top10_result = []
    curr = 'not_matched'
    for i in range(10):
        #append the last matched result for the rest.
        if i >= len(candidates):
            top10_result.append(curr)
            continue
        candidate = candidates[i]
        if candidate in real_locs:            
            matched.add(candidate)
            if len(matched) == len(real_locs):
                curr = 'matched'
            elif len(matched) > 0:
                curr = 'partially_matched'
        top10_result.append(curr)
    return top10_result

def count_matched(matched_result):
    matched = 0
    partially_matched = 0
    not_matched = 0

    for bug_id, lst in matched_result.items():
        result = lst[-1]
        if result == 'matched':
            matched += 1
        elif result == 'partially_matched':
            partially_matched += 1
        else:
            not_matched += 1

    return matched, partially_matched, not_matched

def load_benchmark(benchmark_file):
    with open(benchmark_file, 'r') as json_file:
        lst = json.load(json_file)
    benchmark = {}
    for entry in lst:
        bug_id = entry['bug_id']
        locs_entries = entry['locs']
        locs = set()
        for e in locs_entries:
            code_line = e['line']
            if e['type'] == 'faulty': #only consider faulty lines.
                locs.add(f"{code_line['class']}:{code_line['line_num']}")
        if bug_id in benchmark:
            benchmark[bug_id] = [benchmark[bug_id], locs]
        else:
            benchmark[bug_id] = locs
    return benchmark

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("base_dir", type=str, nargs='?', default="fusefl_results", help="Base directory containing the FuseFL results.")
    parser.add_argument("benchmark", type=str, nargs='?', default="benchmark.json", help="NPE Benchmark JSON file.")
    args = parser.parse_args()
        
    benchmark = load_benchmark(args.benchmark)
    total_fault_locs = iterate_directory(args.base_dir)

    total_result = {}
    fl_result = {}        
    for trial, fault_locs in total_fault_locs.items():    
        matched_result = compare_fault_locs(fault_locs, benchmark)
        matched, partially_matched, not_matched = count_matched(matched_result)
        total_result[trial] = matched_result        
        fl_result[f"{trial}_matched"] = matched
        fl_result[f"{trial}_partially_matched"] = partially_matched
        fl_result[f"{trial}_not_matched"] = not_matched
    total_result["fl_summary"] = fl_result
    
    result_file_path = os.path.join(args.base_dir, 'trials', 'fusefl_matched_results.json')
    with open(result_file_path, 'w') as json_file:
        json.dump(total_result, json_file, sort_keys=True, indent=4)

if __name__ == "__main__":
    main()