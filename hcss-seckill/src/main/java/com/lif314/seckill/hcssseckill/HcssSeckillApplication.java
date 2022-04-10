package com.lif314.seckill.hcssseckill;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;


@EnableDiscoveryClient
@SpringBootApplication
public class HcssSeckillApplication {

    public static void main(String[] args) {
        SpringApplication.run(HcssSeckillApplication.class, args);
    }

}
