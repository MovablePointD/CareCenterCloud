package com.edu.bedroom;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@MapperScan("com.edu.bedroom.mapper")
@EnableCaching
@SpringBootApplication
public class BedroomServiceApplication {

    public static void main(String[] args) {
        org.springframework.boot.SpringApplication.run(BedroomServiceApplication.class, args);
    }
}
