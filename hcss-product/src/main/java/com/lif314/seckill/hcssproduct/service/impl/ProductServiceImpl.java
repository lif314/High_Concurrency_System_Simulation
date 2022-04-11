package com.lif314.seckill.hcssproduct.service.impl;

import com.alibaba.fastjson.JSON;
import com.lif314.seckill.hcsscommon.constant.SeckillConstant;
import com.lif314.seckill.hcsscommon.to.SecKillSkuRedisTo;
import com.lif314.seckill.hcssproduct.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Override
    public List<SecKillSkuRedisTo> getSkus() {
        // 获取所有的场次信息
        Set<String> keys = redisTemplate.keys(SeckillConstant.SESSION_CACHE_PREFIX + "*");

        List<SecKillSkuRedisTo> res = new ArrayList<>();
        for (String key : keys) {
            List<String> range = redisTemplate.opsForList().range(key, 0, -1);// 获取该key关联的所有信息
            BoundHashOperations<String, String, String> hashOps = redisTemplate.boundHashOps(SeckillConstant.SKUKILL_CACHE_PREFIX);
            List<String> list = hashOps.multiGet(range);
            if (list != null) {
                List<SecKillSkuRedisTo> collect = list.stream().map((item) -> {
                    // 商品正在秒杀，需要随机码
                    return JSON.parseObject(item.toString(), SecKillSkuRedisTo.class);
                }).collect(Collectors.toList());

                res.addAll(collect);
            }
        }

        return res;
    }

}
