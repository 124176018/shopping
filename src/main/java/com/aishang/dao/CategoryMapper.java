package com.aishang.dao;


import com.aishang.po.CategoryExt;


import java.util.List;

public interface CategoryMapper {
    /*根据一级类目的 cid查询二级目录*/
    List<CategoryExt> findAllCateName();
}
