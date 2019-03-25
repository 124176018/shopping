package com.aishang.dao;

import com.aishang.po.Category;

import java.util.List;

public interface CategoryMapper {
    /*查询一级类目*/
    List<Category> findCateName();
}
