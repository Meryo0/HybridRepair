API_KEY=$(cat fusefl.api.key)
TRIALS=10
java -cp lib/fusefl-prompt-generator-0.1.0-all-in-one.jar exp.fusefl.FuseFLPrompter fusefl_results fusefl_prompt_list.txt $API_KEY $TRIALS
