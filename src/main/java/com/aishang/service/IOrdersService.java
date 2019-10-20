package com.aishang.service;

import com.aishang.po.*;

import java.util.List;


public interface IOrdersService {
    /*查询所有的省*/
    List<Cities> findUserAddr(Integer parent_area_code);

    /*查询省下面的城市*/
    List<Cities> findUserCity(Integer parent_area_code);

    /*修改发货地址*/
    public int updateAddr(User user);

    /*查询更改后的用户信息*/
    public User findUserByUid(Integer uid);

    /*创建订单*/
    void creatOrder(Orders orders, List<OrderItem> orderItems);

    OrdersExt findOrderByOid(Integer oid);

    void changeState(OrdersExt ordersExt);

    /*查询订单分页*/
    PageBenForOrder<OrdersExt> findOrders(PageBenForOrder<OrdersExt> pageBenForOrder);
}
