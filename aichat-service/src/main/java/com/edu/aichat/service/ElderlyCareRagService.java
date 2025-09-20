package com.edu.aichat.service;


import dev.langchain4j.data.document.Metadata;
import dev.langchain4j.data.embedding.Embedding;
import dev.langchain4j.data.message.AiMessage;
import dev.langchain4j.data.message.SystemMessage;
import dev.langchain4j.data.message.UserMessage;
import dev.langchain4j.data.segment.TextSegment;
import dev.langchain4j.model.StreamingResponseHandler;
import dev.langchain4j.model.chat.ChatLanguageModel;
import dev.langchain4j.model.chat.StreamingChatLanguageModel;
import dev.langchain4j.model.dashscope.QwenChatModel;
import dev.langchain4j.model.dashscope.QwenEmbeddingModel;
import dev.langchain4j.model.dashscope.QwenStreamingChatModel;
import dev.langchain4j.model.embedding.EmbeddingModel;
import dev.langchain4j.model.output.Response;
import dev.langchain4j.store.embedding.EmbeddingMatch;
import dev.langchain4j.store.embedding.EmbeddingStore;
import dev.langchain4j.store.embedding.inmemory.InMemoryEmbeddingStore;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Collectors;

@Service
public class ElderlyCareRagService {

    private final StreamingChatLanguageModel streamingChatModel;
    private final ChatLanguageModel chatModel;
    private final EmbeddingModel embeddingModel;
    private final EmbeddingStore<TextSegment> embeddingStore;

    public ElderlyCareRagService(@Value("sk-ee83b6a7922840019fa88682f0961553") String apiKey) {

        // ✅ 初始化流式聊天模型
        this.streamingChatModel = QwenStreamingChatModel.builder()
                .apiKey(apiKey)
                .modelName("qwen-plus") // 或 qwen-turbo, qwen-max
                .build();

        this.chatModel = QwenChatModel.builder()
                .apiKey(apiKey)
                .modelName("qwen-plus")
                .build();

        this.embeddingModel = QwenEmbeddingModel.builder()
                .apiKey(apiKey)
                .modelName("text-embedding-v2")
                .build();

        this.embeddingStore = new InMemoryEmbeddingStore<>();
        loadDocuments();
    }

//    private void loadDocuments() {
//        try {
//            ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
//            Resource[] resources = resolver.getResources("classpath:documents/*.txt");
//
//            for (Resource resource : resources) {
//                String content = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);
//                String fileName = resource.getFilename();
//
//                // ✅ 使用 TextSplitter 切分文本
//                TextSegment[] segments = TextSplitter.defaults()
//                        .split(content)
//                        .stream()
//                        .map(text -> TextSegment.from(text, Metadata.from("source", fileName)))
//                        .toArray(TextSegment[]::new);
//
//                List<Embedding> embeddings = embeddingModel.embedAll(Arrays.asList(segments)).content();
//                embeddingStore.addAll(embeddings, Arrays.asList(segments));
//
//                System.out.println("✅ 已加载文档: " + fileName + ", 共 " + segments.length + " 个片段");
//            }
//
//        } catch (Exception e) {
//            throw new RuntimeException("加载本地知识库失败", e);
//        }
//    }

    private List<String> splitTextManually(String text) {
        // 按段落分割（两个换行符）
        String[] paragraphs = text.split("\\n\\s*\\n");

        List<String> segments = new ArrayList<>();
        for (String paragraph : paragraphs) {
            if (paragraph.trim().isEmpty()) continue;

            // 如果段落太长（> 500 字符），再按句子分割
            if (paragraph.length() > 500) {
                // 简单按句号、问号、感叹号分割
                String[] sentences = paragraph.split("(?<=[。！？])\\s*");
                segments.addAll(Arrays.asList(sentences));
            } else {
                segments.add(paragraph);
            }
        }
        return segments;
    }

    private void loadDocuments() {
        try {
            ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
            Resource[] resources = resolver.getResources("classpath:documents/*.txt");

            for (Resource resource : resources) {
                String content = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);
                String fileName = resource.getFilename();

                // ✅ 手动分割文本，替代 TextSplitter
                List<String> segmentTexts = splitTextManually(content);

                List<TextSegment> segments = segmentTexts.stream()
                        .map(text -> TextSegment.from(text, Metadata.from("source", fileName)))
                        .collect(Collectors.toList());

                List<Embedding> embeddings = embeddingModel.embedAll(segments).content();
                embeddingStore.addAll(embeddings, segments);

                System.out.println("✅ 已加载文档: " + fileName + ", 共 " + segments.size() + " 个片段");
            }

        } catch (Exception e) {
            throw new RuntimeException("加载本地知识库失败", e);
        }
    }

    public String ask(String question) {

//        return "GetIt!" ;


        Embedding questionEmbedding = embeddingModel.embed(question).content();

        // ✅ 修复：添加 minScore 参数（设为 0.0 表示无过滤）
        List<EmbeddingMatch<TextSegment>> matches = embeddingStore.findRelevant(questionEmbedding, 3, 0.0);

        StringBuilder context = new StringBuilder();
        for (EmbeddingMatch<TextSegment> match : matches) {
            context.append("[来源: ").append(match.embedded().metadata("source")).append("]\n");
            context.append(match.embedded().text()).append("\n\n");
        }

        String systemPrompt = """
        你是一位资深老年人颐养专家，正在为家属或老人提供咨询服务。
        请根据以下提供的资料进行专业、温暖、简洁的回答。
        如果资料中没有相关信息，请回答：“该问题暂未收录，请联系前台工作人员。”
        不要编造信息。

        【参考资料】
        %s
        """.formatted(context.toString());

        UserMessage userMessage = UserMessage.from(question);
        SystemMessage systemMessage = SystemMessage.from(systemPrompt);

        // ✅ 原写法正确，如仍报错请刷新 Maven/Gradle + 重启 IDE
        Response<AiMessage> response = chatModel.generate(Arrays.asList(systemMessage, userMessage));
        return response.content().text();
    }

    /**
     * 流式问答方法
     * @param question 用户问题
     * @param chunkConsumer 每收到一个文本块时的回调
     */
    public void askStream(String question, Consumer<String> chunkConsumer) {
        try {
            // 1. 检索相关文档
            Embedding questionEmbedding = embeddingModel.embed(question).content();
            List<EmbeddingMatch<TextSegment>> matches = embeddingStore.findRelevant(questionEmbedding, 3, 0.0);

            // 2. 组装上下文
            StringBuilder context = new StringBuilder();
            for (EmbeddingMatch<TextSegment> match : matches) {
                context.append("[来源: ").append(match.embedded().metadata("source")).append("]\n");
                context.append(match.embedded().text()).append("\n\n");
            }

            // 3. 构造系统提示词
            String systemPrompt = """
        你是一位资深老年人颐养专家，正在为家属或老人提供咨询服务。
        请根据以下提供的资料进行专业、温暖、简洁的回答。
        如果资料中没有相关信息，请回答：“该问题暂未收录，请联系前台工作人员。”
        不要编造信息。

        【参考资料】
        %s
        """.formatted(context.toString());

            // 4. 构造消息
            SystemMessage systemMessage = SystemMessage.from(systemPrompt);
            UserMessage userMessage = UserMessage.from(question);

            // 5. 流式调用 AI
            StringBuilder fullResponse = new StringBuilder();

            streamingChatModel.generate(
                    Arrays.asList(systemMessage, userMessage),
                    new StreamingResponseHandler<AiMessage>() {
                        @Override
                        public void onNext(String token) {
                            fullResponse.append(token);
                            chunkConsumer.accept(token); // ✅ 流式输出每个片段
                        }

                        @Override
                        public void onComplete(Response<AiMessage> response) {
                            // 可选：记录完整回答
                            // System.out.println("完整回答: " + fullResponse.toString());
                        }

                        @Override
                        public void onError(Throwable error) {
                            chunkConsumer.accept("抱歉，服务暂时出现异常，请稍后再试。");
                            error.printStackTrace();
                        }
                    }
            );

        } catch (Exception e) {
            chunkConsumer.accept("抱歉，服务初始化失败，请稍后再试。");
            throw new RuntimeException("流式调用失败", e);
        }
    }
}