package com.lif314.seckill.hcssorder.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.lif314.seckill.hcsscommon.constant.SeckillConstant;
import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import com.lif314.seckill.hcssorder.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;


@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Override
    public void createSeckillOrder(SeckillOrderTo seckillOrder) {
        /**
         * 实际开发应该放在数据库中
         * 把创建好的订单放在redis中
         */
        BoundHashOperations<String, String, Object> hashOps = redisTemplate.boundHashOps(SeckillConstant.ORDER_CACHE_PREFIX);
        String s = JSON.toJSONString(seckillOrder);
        hashOps.put(seckillOrder.getOrderSn(), s);
    }

    @Override
    public List<SeckillOrderTo> getAllOrders() {

        BoundHashOperations<String, String, Object> hashOps = redisTemplate.boundHashOps(SeckillConstant.ORDER_CACHE_PREFIX);
        Set<String> keys = hashOps.keys();
        if(keys != null){
            List<Object> objects =  hashOps.multiGet(keys);
            List<SeckillOrderTo> seckillOrderTos = JSON.parseObject( objects.toString(), new TypeReference<List<SeckillOrderTo>>() {
            });
            return seckillOrderTos;
        }
        return null;
    }
}
