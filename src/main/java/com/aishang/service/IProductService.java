package com.aishang.service;

import com.aishang.po.CategoryExt;

import java.util.List;

public interface IProductService {
    List<CategoryExt> findAllProduct(Integer cid);
}
