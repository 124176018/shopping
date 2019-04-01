package com.aishang.dao;
import com.aishang.po.PageBenForCate;
import com.aishang.po.ProductExt;
import com.aishang.po.ProductImageExt;

import java.util.List;

public interface ProductMapper {
   List<ProductExt> findAllProduct(PageBenForCate pageBenForCate);

   Integer findAllCount(PageBenForCate pageBenForCate);

   ProductImageExt findProduct(PageBenForCate pageBenForCate);

}
