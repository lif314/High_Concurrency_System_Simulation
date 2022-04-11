package com.lif314.seckill.hcssorder.controller;


import com.lif314.seckill.hcsscommon.to.SeckillOrderTo;
import com.lif314.seckill.hcsscommon.utils.R;
import com.lif314.seckill.hcssorder.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderController {

    @Autowired
    OrderService orderService;
    /**
     * 查询所有订单
     */
    @GetMapping("/listOrders")
    public  R getAllOrders(){
        List<SeckillOrderTo> orders =  orderService.getAllOrders();

        return R.ok().put("data", orders);
    }
}
