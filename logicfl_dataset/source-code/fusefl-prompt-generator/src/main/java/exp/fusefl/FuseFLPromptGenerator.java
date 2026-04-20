package exp.fusefl;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.json.JSONObject;

public class FuseFLPromptGenerator {

    public static final String FAULTY_CODE = "$FAULTY_CODE";
    public static final String TEST_RESULT = "$TEST_RESULT";
    public static final String CODE_DESC = "$CODE_DESC";
    public static final String FUSEFL_PROMPT_FILE = "fusefl_prompt.txt";
    private String baseDir;
    private String promptTemplateFile;
    
    public FuseFLPromptGenerator(String baseDir, String promptTemplateFile) {
        this.baseDir = baseDir;
        this.promptTemplateFile = promptTemplateFile;
    }

    public static void main(String[] args) {
        String baseDir = "fusefl_results";
        String promptTemplateFile = "FUSEFL_PROMPT_TEMPLATE.txt";
        if(args.length > 1) {
            baseDir = args[0];
            promptTemplateFile = args[1];
        } else {
            System.out.println("Usage: FuseFLPromptGenerator {base_dir} {prompt_template_file}");
            System.exit(1);
        }
        FuseFLPromptGenerator generator = new FuseFLPromptGenerator(baseDir, promptTemplateFile);
        generator.run();
    }

    public void run() {        
        try {
            System.out.println("Loading Prompt Template.");
            String promptTemplate = Files.readString(Paths.get(promptTemplateFile));

            System.out.println("Identifying Bug IDs.");
            List<String> bugIds = new ArrayList<>();
            for(File f : Paths.get(baseDir).toFile().listFiles()) {
                if(f.isFile() && f.getName().endsWith("json")) {
                    String bugId = f.getName().split("\\.")[0];
                    bugIds.add(bugId);
                }                
            }
            Collections.sort(bugIds);

            System.out.println("Generating FuseFL prompts.");
            for(String bugId : bugIds) {
                String faultyCodeFile = getFileName(bugId, CodeInfoGenerator.FAULTY_CODE_FILE);
                String testResultFile = getFileName(bugId, CodeInfoGenerator.TEST_RESULT_FILE);
                String codeDescFile = getFileName(bugId, CodeDescriptionGenerator.CODE_DESC_RESPONSE_FILE);
                
                //Reading contents.
                String faultyCode = Files.readString(Paths.get(baseDir, faultyCodeFile));
                String testResult = Files.readString(Paths.get(baseDir, testResultFile));
                String jsonStr = Files.readString(Paths.get(baseDir, codeDescFile));
                JSONObject jsonObject = new JSONObject(jsonStr);
                String codeDesc = jsonObject.getString("reply");

                //Replace to generate prompt.
                String prompt = promptTemplate.replace(FAULTY_CODE, faultyCode);
                prompt = prompt.replace(TEST_RESULT, testResult);
                prompt = prompt.replace(CODE_DESC, codeDesc);
                String promptFile = getFileName(bugId, FUSEFL_PROMPT_FILE);
                Files.writeString(Paths.get(baseDir, promptFile), prompt);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getFileName(String bugId, String fileName) {
        return bugId + "." + fileName;
    }
}
