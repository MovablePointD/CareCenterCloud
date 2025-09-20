package com.edu.gateway.filter;

import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

//@Component
//public class ResponseHeaderLogger implements GlobalFilter, Ordered {
//    @Override
//    public reactor.core.publisher.Mono<Void> filter(ServerWebExchange exchange,
//                                                    org.springframework.cloud.gateway.filter.GatewayFilterChain chain) {
//        return chain.filter(exchange).then(Mono.fromRunnable(() -> {
//            HttpHeaders headers = exchange.getResponse().getHeaders();
//            System.out.println("==== 响应头调试输出 ====");
//            headers.forEach((key, value) -> System.out.println(key + " : " + value));
//            System.out.println("=====================");
//        }));
//    }
//
//    @Override
//    public int getOrder() {
//        return -1; // 在最后执行，确保打印的是最终返回给前端的 header
//    }
//}
