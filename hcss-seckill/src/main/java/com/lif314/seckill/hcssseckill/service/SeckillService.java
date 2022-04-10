package com.lif314.seckill.hcssseckill.service;

import org.springframework.stereotype.Service;

@Service
public interface SeckillService {
    String handleSeckill(String killId, Long userId, String randomCode, Integer num);
}
