package com.lif314.seckill.hcssorder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class HcssOrderApplication {

    public static void main(String[] args) {
        SpringApplication.run(HcssOrderApplication.class, args);
    }

}
