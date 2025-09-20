package com.edu.gateway.filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import reactor.core.publisher.Mono;

@Configuration
public class CorsHeaderFilterConfig {

    @Bean
    public GatewayFilter removeDuplicateCorsHeader(){
        return (exchange, chain) -> chain.filter(exchange).then(Mono.fromRunnable(() -> {
            HttpHeaders headers = exchange.getRequest().getHeaders();
            headers.remove(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN);
            headers.add(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "http://localhost");
        }));
    }
}
