package com.aishang.service;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;


import java.util.List;

public interface ICategoryService {

    /* 查找二级类目*/
    List<CategoryExt> findAllCateName();
}
