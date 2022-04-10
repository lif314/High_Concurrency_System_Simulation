package com.lif314.seckill.hcssorder.listener;


import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import com.lif314.seckill.hcssorder.service.OrderService;
import com.rabbitmq.client.Channel;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
@RabbitListener(queues = "order.seckill.order.queue")
public class OrderSeckillListener {

    @Autowired
    OrderService orderService;

    @RabbitHandler
    public void SeckillOrderListener(SeckillOrderTo seckillOrder, Channel channel, Message message) throws IOException {

        try{
            // 创建秒杀订单
            orderService.cereateSeckillOrder(seckillOrder);
            channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);

        }catch (Exception e){
            // 关闭订单失败，重新回到队列
            channel.basicReject(message.getMessageProperties().getDeliveryTag(), true);
        }
    }
}
