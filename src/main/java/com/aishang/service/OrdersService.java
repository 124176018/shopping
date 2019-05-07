package com.aishang.service;

import com.aishang.dao.OrdersMapper;
import com.aishang.po.Cities;
import com.aishang.po.OrderItem;
import com.aishang.po.Orders;
import com.aishang.po.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
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

    @Override
    public void creatOrder(Orders orders, List<OrderItem> orderItems) {
        ordersMapper.newOrder(orders);
        /*创建订单项*/
        for (OrderItem orderItem: orderItems){
            /*循环创建订单项*/
            /*为orderItem赋值*/
            orderItem.setOid(orders.getOid());
            ordersMapper.newOrderitem(orderItem);
        }
    }

}
