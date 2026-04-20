import json

def get_key(k):
    tokens = k[0].split('_')
    return (tokens[1], int(tokens[2]))

def main():
    with open('fusefl_results/trials/fusefl_matched_results.json') as json_file:
        matched_result = json.load(json_file)
    
    trial = 'trial1'
    data = matched_result[trial]
    
    results = {}
    
    for bug_id, lst in data.items():
        prj = bug_id[0:bug_id.index('_')]
        if prj not in results:
            results[prj] = []
        results[prj].append((bug_id, lst))
    
    #Top-10 matched results.
    projects = ['lang', 'math', 'collections', 'commonsio', 'd4j']
    with open(f'fusefl_top10_results_{trial}.csv', 'w') as f:
        for prj in projects:
            result = results[prj]
            result.sort(key=get_key)
            str_result = [','.join([bug_id.replace('commonsio', 'commons-io')]+lst) for bug_id, lst in result]
            r = '\n'.join(str_result)
            f.write(r)
            f.write('\n')

    #Compute examination.
    with open(f'fusefl_exam_{trial}.csv', 'w') as f:
        for prj in projects:
            result = results[prj]
            result.sort(key=get_key)            
            str_result = []
            for bug_id, lst in result:                
                bug_id = bug_id.replace('commonsio', 'commons-io')
                exam = 0
                status = None
                for m in lst:
                    exam += 1
                    if m == 'matched':
                        status = m
                        break
                if status:
                    str_result.append(f'{bug_id},{exam}')
                else:
                    str_result.append(f'{bug_id},')
            r = '\n'.join(str_result)
            f.write(r)
            f.write('\n')

    with open('fusefl_cost.json') as json_file:
        costs = json.load(json_file)

    #Get cost.
    results = {}
    for bug_id, cost in costs[trial].items():
        prj = bug_id[0:bug_id.index('_')]
        if prj not in results:
            results[prj] = []
        results[prj].append((bug_id, cost))
    
    projects = ['lang', 'math', 'collections', 'commons-io', 'd4j']
    with open(f'fusefl_costs_{trial}.csv', 'w') as f:
        f.write('bug_id, prompot_tokens, completion_tokens, gpt4o_total_cost, gpt4o_mini_total_cost\n')
        for prj in projects:
            result = results[prj]
            result.sort(key=get_key)
            str_result = [','.join([bug_id, str(cost['prompt_tokens']), 
                                    str(cost['completion_tokens']), 
                                    str(cost['gpt4o_total_cost']), 
                                    str(cost['gpt4o_mini_total_cost'])]) 
                                    for bug_id, cost in result]
            r = '\n'.join(str_result)
            f.write(r)
            f.write('\n')

if __name__ == "__main__":
    main()