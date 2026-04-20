package exp.fusefl;
import okhttp3.*;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class GPT4OClient {
    public static final int TIMEOUT = 180;
    public static final int MAX_TOKENS = 4096; //Max. possible tokens.
    public static final double TEMPERATURE = 0.1; //For precise outcomes.
    public static final String GPT4O = "gpt-4o";
    public static final String GPT4O_MINI = "gpt-4o-mini";
    private static final String API_URL = "https://api.openai.com/v1/chat/completions";    
    private String apiKey;

    // Constructor to set API key
    public GPT4OClient(String apiKey) {
        this.apiKey = apiKey;
    }

    public JSONObject callGPT(String prompt, String model) throws IOException {
        // Create JSON object for the request body
        JSONObject requestBody = new JSONObject();
        requestBody.put("model", model != null ? model : GPT4O);

        JSONArray messages = new JSONArray();
        messages.put(new JSONObject().put("role", "system").put("content", "You are a software engineer."));
        messages.put(new JSONObject().put("role", "user").put("content", prompt));

        requestBody.put("messages", messages);
        requestBody.put("max_tokens", MAX_TOKENS);
        requestBody.put("temperature", TEMPERATURE);

        // Create an OkHttpClient instance
        OkHttpClient client = new OkHttpClient.Builder()
            .connectTimeout(TIMEOUT, TimeUnit.SECONDS)
            .writeTimeout(TIMEOUT, TimeUnit.SECONDS)
            .readTimeout(TIMEOUT, TimeUnit.SECONDS)
            .build();

        // Build the request
        Request request = new Request.Builder()
                .url(API_URL)
                .header("Authorization", "Bearer " + apiKey)
                .header("Content-Type", "application/json")
                .post(RequestBody.create(requestBody.toString(), MediaType.get("application/json; charset=utf-8")))
                .build();

        // Execute the request and handle the response
        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                throw new IOException("Unexpected code " + response);
            }

            // Get the response body
            String responseBody = response.body().string();

            // Parse the JSON response
            JSONObject jsonResponse = new JSONObject(responseBody);
            JSONArray choices = jsonResponse.getJSONArray("choices");
            String replyContent = choices.getJSONObject(0).getJSONObject("message").getString("content");

            // Get the token usage
            JSONObject usage = jsonResponse.getJSONObject("usage");
            int promptTokens = usage.getInt("prompt_tokens");
            int completionTokens = usage.getInt("completion_tokens");
            int totalTokens = usage.getInt("total_tokens");

            JSONObject replyJson = new JSONObject();
            replyJson.put("reply", replyContent);
            replyJson.put("prompt_tokens", promptTokens);
            replyJson.put("completion_tokens", completionTokens);
            replyJson.put("total_tokens", totalTokens);

            return replyJson;
        }
    }
}
