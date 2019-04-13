package com.aishang.service;

import com.aishang.dao.OrdersMapper;
import com.aishang.po.Cities;
import com.aishang.po.Orders;
import com.aishang.po.User;

import javax.annotation.Resource;
import java.util.List;

public class OrdersService implements IOrdersService {
    @Resource
    private OrdersMapper ordersMapper;
    @Override
    public List<Cities> findUserAddr(Integer parent_area_code) {
        return ordersMapper.findUserAddr(parent_area_code);
    }

    @Override
    public List<Cities> findUserCity(Integer parent_area_code) {
        return ordersMapper.findUserCity(parent_area_code);
    }

    @Override
    public int updateAddr(User user) {
        return ordersMapper.updateAddr(user);
    }

    @Override
    public User findUserByUid(Integer uid) {
        return ordersMapper.findUserByUid(uid);
    }
}
