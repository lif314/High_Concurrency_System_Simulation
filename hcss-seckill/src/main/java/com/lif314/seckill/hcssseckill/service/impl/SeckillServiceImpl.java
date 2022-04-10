package com.lif314.seckill.hcssseckill.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.lif314.seckill.hcsscommon.constant.SeckillConstant;
import com.lif314.seckill.hcssseckill.service.SeckillService;
import com.lif314.seckill.hcsscommon.to.SecKillSkuRedisTo;
import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import org.redisson.api.RSemaphore;
import org.redisson.api.RedissonClient;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;


@Service("seckillService")
public class SeckillServiceImpl implements SeckillService {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Autowired
    RedissonClient redissonClient;

    @Autowired
    RabbitTemplate rabbitTemplate;


    /**
     * 处理高并发秒杀请求 -- 流量削峰
     */
    @Override
    public String handleSeckill(String killId, Long userId, String randomCode, Integer num) {
// 1、获取当前商品的详细信息
        BoundHashOperations<String, String, String> hashOps = redisTemplate.boundHashOps(SeckillConstant.SKUKILL_CACHE_PREFIX);
        String s = hashOps.get(killId);
        if (!StringUtils.hasLength(s)) {  // 判断是否为空
            SecKillSkuRedisTo redisTo = JSON.parseObject(s, new TypeReference<SecKillSkuRedisTo>() {
            });
            // 校验合法性
            // 1、校验是否过期
            if(redisTo == null){
                return null;
            }
            Long startTime = redisTo.getStartTime();
            Long endTime = redisTo.getEndTime();
            long time = new Date().getTime();
            if (time >= startTime && time <= endTime) {
                // 2、校验随机码是否正确
                String key = redisTo.getPromotionSessionId() + "_" + redisTo.getSkuId();
                if (randomCode.equals(redisTo.getRandomCode()) && killId.equals(key)) {
                    // 3、检验购物数量是否合理
                    if (num <= redisTo.getSeckillLimit()) {
                        // 4、校验该用户是否已经买过了
                        // 幂等性处理：redis占位 userId_sessionId_skuId
                        String userKey = SeckillConstant.USER_SECKILL_LIMIT + userId + "_" + redisTo.getPromotionSessionId() + "_" + redisTo.getSkuId();
                        long ttl = endTime - time; // 超时时间 milliseconds
                        Boolean ifAbsent = redisTemplate.opsForValue().setIfAbsent(userKey, num.toString(), ttl, TimeUnit.MILLISECONDS);// 不存在才占位,超时时间为场次结束时间
                        if (Boolean.TRUE.equals(ifAbsent)) {
                            // 占位成功，从来没有买过
                            // 减库存：减信号量
                            RSemaphore semaphore = redissonClient.getSemaphore(SeckillConstant.SKU_STOCK_SEMAPHORE + redisTo.getRandomCode());

                            // 非阻塞式的 -- 秒杀成功
                            boolean b = semaphore.tryAcquire(num);
                            if (b) {
                                // 秒杀成功：发消息下订单
                                String uuid = UUID.randomUUID().toString();
                                String orderSn = uuid.replace("-", "");
                                // 返回订单号，说明秒杀ok，可以进行付款
                                // 发送消息
                                SeckillOrderTo seckillOrderTo = new SeckillOrderTo();
                                seckillOrderTo.setOrderSn(orderSn); // 订单号
                                seckillOrderTo.setPromotionSessionId(redisTo.getPromotionSessionId());
                                seckillOrderTo.setSeckillPrice(redisTo.getSeckillPrice());
                                seckillOrderTo.setMemberId(userId);
                                seckillOrderTo.setNum(num);
                                seckillOrderTo.setSkuId(redisTo.getSkuId());
                                rabbitTemplate.convertAndSend("order-event-exchange", "order.seckill.order", seckillOrderTo);
                                return orderSn;
                            }

                        }

                    }
                }
            }


        }
        return null;
    }
}
