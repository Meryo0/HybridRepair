package exp.fusefl;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import logicfl.coverage.NPETrace;
import logicfl.coverage.StackTrace;
import logicfl.utils.CodeUtils;
import logicfl.utils.Configuration;
import logicfl.utils.JSONUtils;

public class CodeInfoGenerator {

    public static final String FAULTY_CODE_FILE = "faulty_code.txt";    
    public static final String CODE_DESC_PROMPT_FILE = "code_desc_prompt.txt";    
    public static final String TEST_RESULT_FILE = "test_result.txt";    
    public static final String OUTPUT_PATH = "fusefl_results";
    private Configuration config;
    private Path outputPath;
    private String bugId;

    public CodeInfoGenerator(String configFilePath, Path outputPath, String bugId) {
        this.config = new Configuration(configFilePath);
        this.outputPath = outputPath;
        this.bugId = bugId;
        //If source path has only one entry, try to add test source path.        
        if(config.srcPath.length == 1) {
            String[] possibleTestSrcPaths = { "fixed/src/test/java", "fixed/test", "fixed/src/test" };
            String testSrcPath = null;
            for(String candidate : possibleTestSrcPaths) {
                Path candidatePath = config.getBaseDirFilePath(candidate);
                if(candidatePath.toFile().exists()) {
                    testSrcPath = candidatePath.toString();
                    break;
                }
            }
            if(testSrcPath != null)
                config.srcPath = new String[] { config.srcPath[0], testSrcPath };
        }
    }

    public static void main(String[] args) {
        String baseDir = "subjects";
        if(args.length > 0) {
            baseDir = args[0];
        } else {
            System.out.println("Usage: CodeInfoGenerator {base_dir}");
            System.out.println("base_dir must contain projects directories.");
            System.exit(1);
        }

        String[] projects = { "lang", "math", "collections", "commons-io", "defects4j" };
        try {
            for(String project : projects) {            
                List<Path> bugDirs = getSubDirs(Paths.get(baseDir, project));
                for(Path bugDir : bugDirs) {
                    System.out.println("Generating Code Info. for "+bugDir);
                    String configFilePath = Paths.get(bugDir.toString(), "config.properties").toString();
                    Path outputPath = Paths.get(OUTPUT_PATH);
                    String bugId = getBugId(project, bugDir.getFileName().toString());
                    CodeInfoGenerator generator = new CodeInfoGenerator(configFilePath, outputPath, bugId);
                    generator.run();              
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }              
    }

    public static String getBugId(String project, String dirName) {
        if(project.equals("defects4j")) {
            int index = dirName.indexOf("-");
            String prjName = dirName.substring(0, index);
            String bugNum = dirName.substring(index+1);
            return "d4j_" + prjName.toLowerCase() + "_" + bugNum;
        }
        return dirName;
    }

    public void run() {        
        //Generate Faulty Code part from covered lines.
        System.out.println("Generating covered lines information.");
        List<String> coveredLineCode = new ArrayList<>();
        List<String> classes = new ArrayList<>(config.coverage.getClasses());        
        List<NPETrace> npeTraces = JSONUtils.loadTracesFromJSON(config.npeInfoPath);
        //Remove test classes from faulty code.
        for(NPETrace npe : npeTraces) {
            classes.remove(npe.testClass);
        }
        Collections.sort(classes);
        try {
            for(String className : classes) {
                String source = CodeUtils.getSource(className, config.srcPath);
                if(source == null) {
                    continue;
                }
                Map<Integer, String> codeLines = getCodeLines(source);
                List<Integer> coveredLines = new ArrayList<>(config.coverage.getCoverage(className).keySet());
                Collections.sort(coveredLines);
                for(Integer lineNum : coveredLines) {
                    coveredLineCode.add(String.format("%s:%s `%s`", className, String.valueOf(lineNum), codeLines.get(lineNum)));
                }
            }            
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("Generating test code information.");
        Map<NPETrace, String> testCodeMap = new HashMap<>();
        Set<String> testKeys = new HashSet<>();
        for(NPETrace npe : npeTraces) {
            testCodeMap.put(npe, getTestCode(npe));
            for(StackTrace trace : npe.traces) {
                if(trace.isTarget) {
                    String key = getKey(trace);
                    if(trace.className.equals(npe.testClass) 
                        && trace.methodName.equals(npe.testMethod))
                        testKeys.add(key);
                }
            }
        }

        //Generate Code Description Prompts.       
        System.out.println("Generating prompt.");
        String promptTemplate = "Provide a short code description of the following code:\n %s \nThe provided code is expected to pass these test cases:\n %s";
        StringBuffer sb = new StringBuffer();
        for(String code : coveredLineCode) {
            sb.append(code);
            sb.append("\n");            
        }
        String faultyCode = sb.toString();        
        
        sb = new StringBuffer();
        for(NPETrace npe : testCodeMap.keySet()) {
            sb.append(testCodeMap.get(npe));
            sb.append("\n");
        }
        String testCode = sb.toString();

        String prompt = String.format(promptTemplate, faultyCode, testCode);
        String faultyCodeFile = FuseFLPromptGenerator.getFileName(bugId, FAULTY_CODE_FILE);
        String codeDescPromptFile =  FuseFLPromptGenerator.getFileName(bugId, CODE_DESC_PROMPT_FILE);
        Path faultyCodePath = Paths.get(outputPath.toString(), faultyCodeFile);
        Path codeDescPromptPath = Paths.get(outputPath.toString(), codeDescPromptFile);        
        try {
            if(!outputPath.toFile().exists()) {
                if(!outputPath.toFile().mkdirs()) {
                    throw new IOException("Failed to create the output directory - " + outputPath);
                }
            }
            System.out.println("Storing faulty code to " + faultyCodeFile);
            Files.writeString(faultyCodePath, faultyCode);
            System.out.println("Storing a generated prompt for code description to " + codeDescPromptFile);
            Files.writeString(codeDescPromptPath, prompt);
        } catch (IOException e) {
            e.printStackTrace();
        }

        //Generate Test Results - NPE Stack trace message.
        System.out.println("Generating test results - NPE stack traces.");
        String testResultFile = FuseFLPromptGenerator.getFileName(bugId, TEST_RESULT_FILE);
        Path testResultPath = Paths.get(outputPath.toString(), testResultFile);
        System.out.println("Storing test result part to " + testResultFile);
        try {
            String stackTraces = Files.readString(config.getBaseDirFilePath("stack_traces.txt"));            
            Files.writeString(testResultPath, testCode + "\n\n" + stackTraces);  
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Map<Integer, String> getCodeLines(String source) {
        Map<Integer, String> codeLinesMap = new HashMap<>();
        String[] lines = source.split("\\r?\\n");
        for (int i = 0; i < lines.length; i++) {
            int lineNumber = i + 1;  // Line numbers start from 1
            codeLinesMap.put(lineNumber, lines[i]);
        }

        return codeLinesMap;        
    }

    private String getTestCode(NPETrace npe) {
        return CodeUtils.getMethodCode(npe.testClass, npe.testMethod, config.srcPath);
    }

    private String getKey(StackTrace trace) {
        return trace.className + ":" + trace.methodName + ":" + trace.lineNum;
    }

    private static List<Path> getSubDirs(Path dir) throws IOException {
        List<Path> subDirs = new ArrayList<>();
        if (Files.isDirectory(dir)) {
            try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir)) {
                for (Path entry : stream) {
                    if (Files.isDirectory(entry)) {
                        subDirs.add(entry);
                    }
                }
            }
        }        
        return subDirs;
    }
}
