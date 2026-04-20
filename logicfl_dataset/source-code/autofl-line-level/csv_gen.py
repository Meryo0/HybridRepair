import pandas as pd
import json

file_name = "test_scores_matched"
with open(f'linelevel/{file_name}.json', 'r') as f:
    data = json.load(f)

data = data['is_matched']
df = pd.DataFrame(columns=['bug_name', 'is_matched'])

bug_list = [
    'lang_1',
    'lang_2',
    'lang_3',
    'lang_4',
    'lang_5',
    'lang_6',
    'lang_7',
    'lang_8',
    'lang_9',
    'lang_10',
    'lang_11',
    'lang_12',
    'lang_13',
    'math_1',
    'math_2',
    'math_3',
    'collections_1',
    'collections_2',
    'collections_3',
    'commons-io_1',
    'commons-io_2',
    'commons-io_3',
    'commons-io_4',
    'commons-io_5',
    'commons-io_6',
    'commons-io_7',
    'commons-io_8',
    'commons-io_9',
    'commons-io_10',
    'commons-io_11',
    'commons-io_12',
    'commons-io_13',
    'commons-io_14',
    'commons-io_15',
    'commons-io_16',
    'commons-io_17',
    'commons-io_18',
    'commons-io_19',
    'Chart_2',
    'Chart_4',
    'Chart_14',
    'Chart_16',
    'Cli_5',
    'Cli_30',
    'Closure_2',
    'Closure_171',
    'Codec_5',
    'Codec_13',
    'Codec_17',
    'Csv_4',
    'Csv_9',
    'Csv_11',
    'Gson_6',
    'Gson_9',
    'JacksonCore_8',
    'JacksonDatabind_3',
    'JacksonDatabind_13',
    'JacksonDatabind_80',
    'JacksonDatabind_93',
    'JacksonDatabind_95',
    'JacksonDatabind_107',
    'Jsoup_8',
    'Jsoup_22',
    'Jsoup_26',
    'Jsoup_66',
    'Jsoup_89',
    'Lang_20',
    'Lang_33',
    'Lang_39',
    'Lang_47',
    'Lang_57',
    'Math_4',
    'Math_70',
    'Math_79',
    'Mockito_18',
    'Mockito_38'
]

for i, bug_id in enumerate(bug_list):
    df.loc[i] = [bug_id, 'N/A']

for bug in data:
    if data[bug]['matched'] > 0 and data[bug]['missed'] == 0:
        is_matched = 'matched'
    elif data[bug]['matched'] > 0 and data[bug]['missed'] > 0:
        is_matched = 'partially matched'
    else:
        is_matched = 'not matched'

    for i in range(len(bug_list)):
        if bug_list[i] == bug:
            df.loc[i] = [bug, is_matched]

df.to_csv(f'linelevel/{file_name}.csv', index=False)
