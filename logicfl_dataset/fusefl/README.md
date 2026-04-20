### LogicFL Replication Package - FuseFL

This is a part of LogicFL replication package for FuseFL.
Here are basic information of the included directories and files.   

- ``benchmark.json``: The NPE benchmark bug information.
- ``lib``: contains a jar file of FuseFL related implementation.
- ``fusefl_cost.json``: execution cost results.
- ``fusefl_code_desc_prompt_list.txt``: contains a list of code description generation prompts.
- ``fusefl_prompt_list.txt``: contains a list of FuseFL prompts.
- ``FUSEFL_PROMPT_TEMPLATE.txt``: FuseFL Prompt Template File.
- ``FUSEFL_PROMPT_TEMPLATE.txt``: FuseFL Prompt Template File.
- ``fusefl_results``: contains results used for analysis.
    - ``trials``: results of 10 trials.
        - ``<bug_id>.fusefl_response.json``: FL results from LLM (GPT-4o).
        - ``<bug_id>.fault_locs.json``: extracted fault locations from the response, using ``extract_fusefl_locs_and_costs.py``.
    - ``<bug_id>.faulty_code.txt``: an extracted faulty code of <bug_id>.
    - ``<bug_id>.test_result.txt``: an extracted test result of <bug_id>.
    - ``<bug_id>.code_desc_prompt.txt``: a generated prompt to obtain code description for <bug_id>.
    - ``<bug_id>.code_desc_response.json``: a response from LLM for code description of <bug_id>.
    - ``<bug_id>.fusefl_prompt.json``: a response prompt for fault localization of <bug_id>.


### Replicatoin Steps

To replicate our experiments, proceed with the following steps.
Note that scripts will overwrite current results in ``fusefl_results``.

1. Store your OpenAI API key in ``fusefl.api.key``.
2. Execute ``fusefl_code_info.sh`` script. It will automatically collect necessary information from subjects directories.
3. Execute ``fusefl_code_desc.sh`` script to generate code description. It will send requests for generated prompts in ``fusefl_code_desc_prompt_list.txt``.
4. Execute ``fusefl_prompt.sh`` script. It will generate FuseFL prompts using ``FUSEFL_PROMPT_TEMPLATE.txt``.
5. Execute ``fusefl.sh`` script. It will send requests for fault localization using ``fusefl_prompt_list.txt``.
    * Default trial number is set to 10. You can change it in the script.

Once all files are generated, you can execute Python scripts to obtain analysis results.

1. Execute ``extract_fusefl_locs_and_costs.py``. 
    * It will generate ``<bug_id>.fault_locs.json`` files in each trial directory.
    * It will also generate ``fusefl_cost.json`` which contains estimated costs.
2. Execute ``match_fusefl_results.py``.
    * It will generate results of matched bugs. 
    * The results are stored in ``trials/fusefl_matched_results.json``.
3. Execute ``export_results_to_csv.py``.
    * You need to change the value of ``trial`` in the script to decide which trial result will be used.
    * The results are stored in ``fusefl_top10_results_<trial#>.csv``.
    * We analyzed and reported results using ``trial1``.
    * It also generates ``fusefl_exam_<trial#>.csv``, which contains the number of examinations for matched bugs.