package com.edu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
@MapperScan("com.edu.mapper")
public class OtherServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(OtherServiceApplication.class, args);
    }
}
