package com.aishang.dao;

import com.aishang.po.ProductExt;

import java.util.List;

public interface ProductMapper {
    List<ProductExt> findAllProduct(int cid);

    List<ProductExt> findSencondProduct(int csid);


}
