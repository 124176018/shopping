package com.aishang.dao;

import com.aishang.po.Product;

import java.util.List;

public interface ProductMapper {
    /*根据ID查询商品*/
    Product findProductById(Integer pid);
    /*查询商品列表*/
    List<Product> findProducts();
    /*添加商品*/
    void addProduct(Product product);
    /*删除商品*/
    void deleteProduct(Integer pid);
    /*修改商品*/
    void updateProduct(Product product);

}
