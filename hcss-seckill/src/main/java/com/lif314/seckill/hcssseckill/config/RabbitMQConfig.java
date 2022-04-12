package com.lif314.seckill.hcssseckill.config;


import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {
    // 将发送接受消息转化为json数据
    @Bean
    public MessageConverter messageConverter(){
        // 配置序列化器
        return new Jackson2JsonMessageConverter();
    }
}
