package com.edu.sysresource;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication(scanBasePackages = {"com.edu.sysresource", "com.edu.common"})
@MapperScan("com.edu.sysresource.mapper")
@EnableCaching
public class SysResourceServiceApplication {

    public static void main(String[] args) {
        org.springframework.boot.SpringApplication.run(SysResourceServiceApplication.class, args);
    }
}
