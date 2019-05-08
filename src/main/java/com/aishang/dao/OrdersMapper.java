package com.aishang.dao;

import com.aishang.po.*;

import java.util.List;

public interface OrdersMapper {
    List<Cities> findUserAddr(Integer parent_area_code);
    List<Cities> findUserCity(Integer parent_area_code);
    public int updateAddr(User user);
    public User findUserByUid(Integer uid);
    void newOrder(Orders orders);
    void newOrderitem(OrderItem orderItem);
    /*根据订单ID查询订单详情*/
    OrdersExt findOrderByOid(Integer oid);
    /*根据订单ID修改订单状态*/
    void changeState(OrdersExt ordersExt);

}
