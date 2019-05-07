package com.aishang.service;
import com.aishang.po.Cities;
import com.aishang.po.OrderItem;
import com.aishang.po.Orders;
import com.aishang.po.User;

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

    void creatOrder(Orders orders,List<OrderItem> orderItems);

}
