package com.aishang.dao;
import com.aishang.po.PageBenForCate;
import com.aishang.po.ProductExt;

import java.util.List;

public interface ProductMapper {
   List<ProductExt> findAllProduct(PageBenForCate pageBenForCate);

   Integer findAllCount(PageBenForCate pageBenForCate);

}
