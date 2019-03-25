package com.aishang.service;
import com.aishang.po.Category;
import java.util.List;

public interface ICategoryService {
    /*查询Category表里全部的一级类目*/
    List<Category> findCateName();
}
