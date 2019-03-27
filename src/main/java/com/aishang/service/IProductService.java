package com.aishang.service;


import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;
import com.aishang.po.ProductExt;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface IProductService {
    /*点击一级类目拿到所有商品*/
    List<ProductExt> findAllProduct(int cid);
    /*点击二级目录显示二级类目下的商品*/
    List<CategorySecondExt> findSencondProduct(int csid);
}
