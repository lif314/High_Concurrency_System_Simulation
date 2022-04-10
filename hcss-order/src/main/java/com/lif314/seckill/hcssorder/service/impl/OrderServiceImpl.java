package com.lif314.seckill.hcssorder.service.impl;

import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import com.lif314.seckill.hcssorder.service.OrderService;

public class OrderServiceImpl implements OrderService {
    @Override
    public void cereateSeckillOrder(SeckillOrderTo seckillOrder) {
        System.out.println( "订单号： " + seckillOrder.getOrderSn() + "创建成功！");
    }
}
