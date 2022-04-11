package com.lif314.seckill.hcssorder.service;

import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    void createSeckillOrder(SeckillOrderTo seckillOrder);

    List<SeckillOrderTo> getAllOrders();
}
