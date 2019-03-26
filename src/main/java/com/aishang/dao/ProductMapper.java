package com.aishang.dao;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;

import java.util.List;

public interface ProductMapper {
    List<CategoryExt> findAllProduct(Integer cid);


}
