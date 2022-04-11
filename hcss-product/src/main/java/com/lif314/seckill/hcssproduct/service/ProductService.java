package com.lif314.seckill.hcssproduct.service;

import com.lif314.seckill.hcsscommon.to.SecKillSkuRedisTo;

import java.util.List;

public interface ProductService {
    List<SecKillSkuRedisTo> getSkus();
}
