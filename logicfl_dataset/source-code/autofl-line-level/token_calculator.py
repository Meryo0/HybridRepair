import json
import os
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="")
    parser.add_argument('dir_name', nargs='*', type=str, default='')
    args = parser.parse_args()
    dir_name = args.dir_name
    if dir_name:
        find_all = False
    else:
        find_all = True

    prompt_tokens, completion_tokens = 0, 0

    dirs = os.listdir('linelevel')
    for d in dirs:
        if os.path.isdir(f'linelevel/{d}/gpt-4o') and (d in dir_name or find_all):
            files = os.listdir(f'linelevel/{d}/gpt-4o')
            for f in files:
                if f.endswith('.json'):
                    with open(f'linelevel/{d}/gpt-4o/{f}', 'r') as file:
                        data = json.load(file)
                        if 'prompt_tokens' in data and 'completion_tokens' in data:
                            prompt_tokens += data['prompt_tokens']
                            completion_tokens += data['completion_tokens']

    print(f'Prompt tokens: {prompt_tokens}')
    print(f'Completion tokens: {completion_tokens}')
    # GPT-4o
    # $0.005 per 1k prompt tokens
    # $0.015 per 1k completion tokens
    print(f'Total cost: ${((prompt_tokens / 1000) * 0.005) + ((completion_tokens / 1000) * 0.015)}')
