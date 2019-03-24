package com.aishang.service;
import com.aishang.po.Category;
public interface ICategoryService {
    /*查询Category表里全部的一级类目*/
    Category findCateByid(Integer cid);
}
