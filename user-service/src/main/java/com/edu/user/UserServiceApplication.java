package com.edu.user;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.openfeign.EnableFeignClients;

@MapperScan("com.edu.user.mapper")
@EnableCaching
@SpringBootApplication(scanBasePackages = {"com.edu.user", "com.edu.common"})
@EnableFeignClients(basePackages = "com.edu.user.client")
public class UserServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(UserServiceApplication.class, args);
    }
}
