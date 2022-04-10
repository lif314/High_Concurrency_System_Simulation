package com.lif314.seckill.hcssgateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

// 开启服务注册发现
@EnableDiscoveryClient
@SpringBootApplication
public class HcssGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(HcssGatewayApplication.class, args);
    }

}
