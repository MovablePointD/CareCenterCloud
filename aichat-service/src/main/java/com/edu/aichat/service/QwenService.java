package com.edu.aichat.service;

import okhttp3.*;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class QwenService {

    private static final String DASHSCOPE_API_URL = "https://dashscope.aliyuncs.com/api/v1/services/aigc/text-generation/generation";
    private final OkHttpClient client = new OkHttpClient();

    @Value("${dashscope.api.key}")
    private String apiKey;


//    public String callQwen(String prompt) {
//        try {
//            // 构造请求体
//            JSONObject requestBody = new JSONObject();
//            requestBody.put("model", "qwen-plus"); // 可选 qwen-turbo, qwen-plus, qwen-max 等
//            JSONObject input = new JSONObject();
//            JSONArray messages = new JSONArray();
//            JSONObject message = new JSONObject();
//            message.put("role", "user");
//            message.put("content", prompt);
//            messages.put(message);
//            input.put("messages", messages);
//            requestBody.put("input", input);
//
//            RequestBody body = RequestBody.create(
//                    requestBody.toString(),
//                    MediaType.parse("application/json; charset=utf-8")
//            );
//
//            Request request = new Request.Builder()
//                    .url(DASHSCOPE_API_URL)
//                    .post(body)
//                    .addHeader("Authorization", "Bearer " + apiKey)
//                    .addHeader("Content-Type", "application/json")
//                    .build();
//
//            try (Response response = client.newCall(request).execute()) {
//                if (!response.isSuccessful()) {
//                    throw new RuntimeException("请求失败: " + response.code());
//                }
//
//                String responseBody = response.body().string();
//                JSONObject jsonResponse = new JSONObject(responseBody);
//                return jsonResponse.getJSONObject("output").getString("text");
//            }
//
//        } catch (Exception e) {
//            throw new RuntimeException("调用 Qwen 失败", e);
//        }
//    }


    // ✅ 新增：允许传入系统提示词
    public String callQwenWithSystemPrompt(String systemPrompt, String userPrompt) {
        try {
            JSONObject requestBody = new JSONObject();
            requestBody.put("model", "qwen-plus"); // 可替换为 qwen-turbo, qwen-max 等

            JSONObject input = new JSONObject();
            JSONArray messages = new JSONArray();

            // 1️⃣ 系统消息（预设角色/行为）
            if (systemPrompt != null && !systemPrompt.trim().isEmpty()) {
                JSONObject systemMessage = new JSONObject();
                systemMessage.put("role", "system");
                systemMessage.put("content", systemPrompt);
                messages.put(systemMessage);
            }

            // 2️⃣ 用户消息
            JSONObject userMessage = new JSONObject();
            userMessage.put("role", "user");
            userMessage.put("content", userPrompt);
            messages.put(userMessage);

            input.put("messages", messages);
            requestBody.put("input", input);

            RequestBody body = RequestBody.create(
                    requestBody.toString(),
                    MediaType.parse("application/json; charset=utf-8")
            );

            Request request = new Request.Builder()
                    .url(DASHSCOPE_API_URL)
                    .post(body)
                    .addHeader("Authorization", "Bearer " + apiKey)
                    .addHeader("Content-Type", "application/json")
                    .build();

            try (Response response = client.newCall(request).execute()) {
                if (!response.isSuccessful()) {
                    throw new RuntimeException("请求失败: " + response.code() + ", " + response.body().string());
                }

                String responseBody = response.body().string();
                JSONObject jsonResponse = new JSONObject(responseBody);
                return jsonResponse.getJSONObject("output").getString("text");
            }

        } catch (Exception e) {
            throw new RuntimeException("调用 Qwen 失败", e);
        }
    }

}
