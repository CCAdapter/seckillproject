package com.seckillproject.service;

import com.seckillproject.error.BusinessException;
import com.seckillproject.service.model.OrderModel;

public interface OrderService {
    // 通过前端url上传过来的秒杀活动id，然后接口内校验对应id是否属于对应商品且活动已开始
    OrderModel createOrder(Integer userId, Integer itemId, Integer promoId, Integer amount) throws BusinessException;
}
