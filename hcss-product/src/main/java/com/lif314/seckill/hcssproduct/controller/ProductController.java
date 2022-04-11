package com.lif314.seckill.hcssproduct.controller;

import com.lif314.seckill.hcsscommon.to.SecKillSkuRedisTo;
import com.lif314.seckill.hcsscommon.utils.R;
import com.lif314.seckill.hcssproduct.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {


    @Autowired
    ProductService productService;

    /**
     * 获取所有秒杀商品
     */
    public R getSkus(){
       List<SecKillSkuRedisTo> skuRedisToList =  productService.getSkus();

        return R.ok().put("data", skuRedisToList);
    }
}
