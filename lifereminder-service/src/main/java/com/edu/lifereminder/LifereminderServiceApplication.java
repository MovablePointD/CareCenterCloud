package com.edu.lifereminder;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@MapperScan("com.edu.lifereminder.mapper")
@EnableCaching
@SpringBootApplication
public class LifereminderServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(LifereminderServiceApplication.class, args);
    }
}
