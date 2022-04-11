package com.lif314.seckill.hcssseckill.service;

import com.lif314.seckill.hcsscommon.to.SecKillSkuRedisTo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SeckillService {
    String handleSeckill(String killId, Long userId, String randomCode, Integer num);
}
