package com.aishang.service;

import com.aishang.po.*;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IProductService {
    /*查询所有情况下的所有商品*/
    void findAllProduct(PageBenForCate pageBenForCate);

    /*根据商品pid查询查询商品详细的信息*/
    ProductImageExt findProduct(Integer pid);


}