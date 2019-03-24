package com.aishang.dao;

import com.aishang.po.Category;

public interface CategoryMapper {
    /*查询一级类目*/
    Category findCateByid(Integer cid);
}
