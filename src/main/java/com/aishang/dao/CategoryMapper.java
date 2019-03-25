package com.aishang.dao;

import com.aishang.po.Category;
import com.aishang.po.CategorySecond;

import java.util.List;

public interface CategoryMapper {
    /*查询一级类目*/
    List<Category> findCateName();
    /*根据一级类目的 cid查询二级目录*/
    List<CategorySecond> categorysSeconds(int cid);
}
