API_KEY=$(cat fusefl.api.key)
java -cp lib/fusefl-prompt-generator-0.1.0-all-in-one.jar exp.fusefl.CodeDescriptionGenerator fusefl_results fusefl_code_desc_prompt_list.txt $API_KEY 
