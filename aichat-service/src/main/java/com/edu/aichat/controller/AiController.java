package com.edu.aichat.controller;


import com.edu.aichat.service.ElderlyCareRagService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter;

import java.io.IOException;
import java.util.Map;

@RestController
@RequestMapping("/ai")
public class AiController {

    @Autowired
    private ElderlyCareRagService elderlyCareRagService;

//    @PostMapping("/chat")
//    public String askQwen(@RequestBody Map<String, String> request) {
//        String question = request.get("question");
//        return qwenService.callQwen(question);
//    }

//    @PostMapping("/ask")
//    public String askQwen(@RequestBody Map<String, String> request) {
//        String question = request.get("question");
//
//        // ✅ 固定系统提示词
//        String systemPrompt = "你是一个专业、幽默、乐于助人的AI助手，回答请控制在100字以内。";
//
//        return qwenService.callQwenWithSystemPrompt(systemPrompt, question);
//    }

    @PostMapping("/rag")
    public String ask(@RequestBody Map<String, String> request) {
        System.out.println("Received request: " + request);
        String question = request.get("question");
        return elderlyCareRagService.ask(question);
    }

    @PostMapping("/ask/stream")
    public ResponseBodyEmitter askStream(@RequestBody Map<String, String> request) {
        String question = request.get("question");

        ResponseBodyEmitter emitter = new ResponseBodyEmitter();

        // 异步执行，避免阻塞主线程
        new Thread(() -> {
            try {
                // 调用流式生成方法
                elderlyCareRagService.askStream(question, chunk -> {
                    try {
                        // 发送每个 chunk（片段）
                        emitter.send(chunk);
                    } catch (IOException e) {
                        emitter.completeWithError(e);
                    }
                });
                emitter.complete(); // 结束流
            } catch (Exception e) {
                emitter.completeWithError(e);
            }
        }).start();

        return emitter;
    }

}
