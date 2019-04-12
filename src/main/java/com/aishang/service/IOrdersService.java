package com.aishang.service;
import com.aishang.po.Cities;
import java.util.List;


public interface IOrdersService {
    /*查询所有的省*/
    List<Cities> findUserAddr(Integer parent_area_code);
    /*查询省下面的城市*/
    List<Cities> findUserCity(Integer parent_area_code);
}
