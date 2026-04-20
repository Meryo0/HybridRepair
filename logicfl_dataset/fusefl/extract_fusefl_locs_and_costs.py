import os
import json
import argparse
import re

GPT4O_INPUT_PRICE = 0.000005
GPT4O_OUTPUT_PRICE = 0.000015
GPT4O_MINI_INPUT_PRICE = 0.000000150
GPT4O_MINI_OUTPUT_PRICE = 0.000000600

def process_json_file(bug_id, trial_path, file_name):
    file_path = os.path.join(trial_path, file_name)                    
    locs_json_path = os.path.join(trial_path, bug_id+'.fault_locs.json')        

    cost = {}
    with open(file_path, 'r') as json_file:
        print(f"Processing {bug_id}")
        data = json.load(json_file)
        
        cost['total_tokens'] = data['total_tokens']
        cost['prompt_tokens'] = data['prompt_tokens']
        cost['completion_tokens'] = data['completion_tokens']        
        cost['gpt4o_total_cost'] = GPT4O_INPUT_PRICE * int(cost['prompt_tokens']) + GPT4O_OUTPUT_PRICE * int(cost['completion_tokens'])
        cost['gpt4o_mini_total_cost'] = GPT4O_MINI_INPUT_PRICE * int(cost['prompt_tokens']) + GPT4O_MINI_OUTPUT_PRICE * int(cost['completion_tokens'])

        fault_locs_json = extract_json_part(data['reply'])
        with open(locs_json_path, 'w') as locs_json:
            json.dump(fault_locs_json, locs_json, indent=4)
    return cost

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
    cost_summary = {}
    
    if not os.path.exists(trials_directory):
        print(f"Directory '{trials_directory}' does not exist.")
        return None
    
    for trial_folder in os.listdir(trials_directory):
        trial_path = os.path.join(trials_directory, trial_folder)        
        if os.path.isdir(trial_path):
            print(f"Found trial directory: {trial_folder}")
            costs = {}            
            suffix = 'fusefl_response.json'
            for file_name in os.listdir(trial_path):                
                if file_name.endswith(suffix):
                    index = file_name.index(suffix)
                    if index > 1:
                        bug_id = file_name[0:index-1]
                        cost = process_json_file(bug_id, trial_path, file_name)
                        costs[bug_id] = cost
            cost_summary[trial_folder] = costs
    return cost_summary

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("base_dir", type=str, nargs='?', default="fusefl_results", help="Base directory containing the FuseFL results.")
    args = parser.parse_args()
    
    cost_summary = iterate_directory(args.base_dir)
    with open('fusefl_cost.json', 'w') as f:
        json.dump(cost_summary, f, indent=4)
    
    for trial, costs in cost_summary.items():
        total_gpt4o_cost = 0
        total_gpt4o_mini_cost = 0    
        for bug_id, cost in costs.items():
            total_gpt4o_cost += cost['gpt4o_total_cost']
            total_gpt4o_mini_cost += cost['gpt4o_mini_total_cost']
        print(f"Costs of {trial}:")    
        print(f"Total GPT-4o Cost is ${total_gpt4o_cost}.")
        print(f"Total GPT-4o-mini Cost is ${total_gpt4o_mini_cost}.")

if __name__ == "__main__":
    main()