package com.aishang.dao;

import com.aishang.po.Cities;

import java.util.List;

public interface OrdersMapper {
    List<Cities> findUserAddr(Integer parent_area_code);
    List<Cities> findUserCity(Integer parent_area_code);

}
