package exp.fusefl;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.json.JSONObject;

public class CodeDescriptionGenerator {

    public static final String CODE_DESC_RESPONSE_FILE = "code_desc_response.json";
    private String baseDir;
    private String promptListFile;
    private String apiKey;
    private String model;
    
    public CodeDescriptionGenerator(String baseDir, String promptListFile, String apiKey, String model) {
        this.baseDir = baseDir;
        this.promptListFile = promptListFile;
        this.apiKey = apiKey;
        this.model = model;        
    }

    public static void main(String[] args) {
        String promptListFile = "fusefl_code_desc_prompts.txt";
        String apiKey = null;
        String baseDir = null;
        String model = GPT4OClient.GPT4O;
        if(args.length > 3) {
            baseDir = args[0];
            promptListFile = args[1];
            apiKey = args[2];
            model = args[3];
        } else if(args.length > 2) {
            baseDir = args[0];
            promptListFile = args[1];
            apiKey = args[2];
        } else {
            System.out.println("Usage: CodeDescriptionGenerator {baseDir} {prompt_list_file} {api_key} [model]");
            System.exit(1);
        }
        CodeDescriptionGenerator generator = new CodeDescriptionGenerator(baseDir, promptListFile, apiKey, model);
        generator.run();
    }

    public void run() {        
        try {
            System.out.println("Reading prompts from "+promptListFile);
            List<String> promptFiles = Files.readAllLines(Paths.get(promptListFile));
            System.out.println("Getting code description using the prompts.");
            for(String promptFile : promptFiles) {
                System.out.println("Getting code description of "+promptFile);
                String prompt = Files.readString(Paths.get(baseDir, promptFile));
                String[] tokens = promptFile.split("\\.");
                String bugId = tokens[0];
                callAPI(prompt, bugId, Paths.get(baseDir));
            }            
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void callAPI(String prompt, String bugId, Path outputPath) throws IOException {
        //Call API to get code description.
        GPT4OClient gpt4OClient = new GPT4OClient(apiKey);
        JSONObject response = gpt4OClient.callGPT(prompt, model);
        String codeDescResFile = FuseFLPromptGenerator.getFileName(bugId, CODE_DESC_RESPONSE_FILE);
        Path codeDescResPath = Paths.get(outputPath.toString(), codeDescResFile);            
        System.out.println("Storing a response to " + codeDescResFile);                        
        Files.writeString(codeDescResPath, response.toString());
    }
    
}
