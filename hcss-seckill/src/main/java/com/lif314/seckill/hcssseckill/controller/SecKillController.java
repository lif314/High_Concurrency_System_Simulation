package com.lif314.seckill.hcssseckill.controller;

import com.lif314.seckill.hcsscommon.utils.R;
import com.lif314.seckill.hcssseckill.service.SeckillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class SecKillController {

    @Autowired
    SeckillService seckillService;

    /**
     * 处理秒杀订单请求，请求会返回订单号信息
     */
    @GetMapping("/seckill")
    public R seckill(@RequestParam("killId") String killId,
                     @RequestParam("key") String randomCode,
                     @RequestParam("num") Integer num,
                     @RequestParam("userId") Long userId
    ){

     String orderSn = seckillService.handleSeckill(killId, userId, randomCode, num);

     return R.ok().put("data", orderSn);
    }
}
