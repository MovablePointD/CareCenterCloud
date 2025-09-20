package com.edu.role;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.openfeign.EnableFeignClients;

@MapperScan("com.edu.role.mapper")
@SpringBootApplication(scanBasePackages = {"com.edu.role", "com.edu.common"})
@EnableCaching
@EnableFeignClients(basePackages = "com.edu.role.client")
public class RoleServiceApplication {

    public static void main(String[] args) {
        org.springframework.boot.SpringApplication.run(RoleServiceApplication.class, args);
    }
}
