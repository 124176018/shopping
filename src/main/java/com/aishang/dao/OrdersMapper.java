package com.aishang.dao;

import com.aishang.po.Cities;
import com.aishang.po.OrderItem;
import com.aishang.po.Orders;
import com.aishang.po.User;

import java.util.List;

public interface OrdersMapper {
    List<Cities> findUserAddr(Integer parent_area_code);
    List<Cities> findUserCity(Integer parent_area_code);
    public int updateAddr(User user);
    public User findUserByUid(Integer uid);
    void newOrder(Orders orders);
    void newOrderitem(OrderItem orderItem);

}
