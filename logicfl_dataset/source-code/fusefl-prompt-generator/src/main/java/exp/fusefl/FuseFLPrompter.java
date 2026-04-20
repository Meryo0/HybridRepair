package exp.fusefl;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import logicfl.utils.Timer;

public class FuseFLPrompter {

    public static final String FUSEFL_RESPONSE_FILE = "fusefl_response.json";
    private String baseDir;
    private String promptListFile;
    private String apiKey;
    private String model;    
    
    public FuseFLPrompter(String baseDir, String promptListFile, String apiKey, String model) {
        this.baseDir = baseDir;
        this.promptListFile = promptListFile;
        this.apiKey = apiKey;
        this.model = model;        
    }

    public static void main(String[] args) {
        String promptListFile = "fusefl_prompts.txt";
        String apiKey = null;
        String baseDir = null;
        String model = GPT4OClient.GPT4O;
        int trials = 10;
        switch(args.length) {
            case 5:
                model = args[4];                        
            case 4:
                trials = Integer.parseInt(args[3]);
            case 3:
                apiKey = args[2];
                promptListFile = args[1];
                baseDir = args[0];
                break;
            default:
                System.out.println("Usage: FuseFLPrompter {baseDir} {prompt_list_file} {api_key} [trial] [model]");
                System.exit(1);
        }
        FuseFLPrompter generator = new FuseFLPrompter(baseDir, promptListFile, apiKey, model);
        generator.run(trials);
    }

    public void run(int trials) {        
        try {
            System.out.println("Reading prompts from "+promptListFile);
            List<String> promptFiles = Files.readAllLines(Paths.get(promptListFile));
            Map<Integer, List<String>> retryMap = new HashMap<>();
            Timer timer = new Timer("fusefl");
            for(int i=1; i <= trials; i++) {  
                System.out.println("Starting Trial"+i);
                timer.setStart();
                Path trialDir = Paths.get(baseDir, "trials", "trial"+i);
                if(!trialDir.toFile().exists()) {
                    trialDir.toFile().mkdirs();
                }
                System.out.println("Getting fault localization results using the prompts.");            
                for(String promptFile : promptFiles) {
                    System.out.println("Getting FL result of "+promptFile);
                    String prompt = Files.readString(Paths.get(baseDir, promptFile));
                    String[] tokens = promptFile.split("\\.");
                    String bugId = tokens[0];
                    try{
                        callAPI(prompt, bugId, trialDir);
                    } catch (IOException e) {
                        retryMap.putIfAbsent(i, new ArrayList<>());
                        retryMap.get(i).add(promptFile);
                    }                        
                }
                timer.setEnd();
                System.out.printf("Trial %d Exec. Time: %s\n", i, timer.getExecTimeStr());
            }

            //Store retry list.
            StringBuffer sb = new StringBuffer();
            for(Integer trial : retryMap.keySet()) {
                sb.append(trial);
                sb.append(",");
                sb.append(retryMap.get(trial));
                sb.append("\n");
            }
            Files.writeString(Paths.get(baseDir, "trials", "fusefl_retry.txt"), sb.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void callAPI(String prompt, String bugId, Path outputPath) throws IOException {
        //Call API to get code description.
        GPT4OClient gpt4OClient = new GPT4OClient(apiKey);
        JSONObject response = gpt4OClient.callGPT(prompt, model);
        String flResultFile = FuseFLPromptGenerator.getFileName(bugId, FUSEFL_RESPONSE_FILE);
        Path flResultPath = Paths.get(outputPath.toString(), flResultFile);            
        System.out.println("Storing a response to " + flResultFile);                        
        Files.writeString(flResultPath, response.toString());
    }
}
