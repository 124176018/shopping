package com.aishang.service;

import com.aishang.dao.ProductMapper;
import com.aishang.po.CategoryExt;
import com.aishang.po.ProductExt;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;
@Service
public class Product implements IProductService {
    @Resource
    private ProductMapper productMapper;
    public List<CategoryExt> findAllProduct(Integer cid) {
        return productMapper.findAllProduct(cid);
    }
}
