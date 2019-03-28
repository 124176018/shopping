package com.aishang.service;
import com.aishang.dao.ProductMapper;


import com.aishang.po.ProductExt;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
@Service
public class ProductService implements IProductService {
    @Resource
    private ProductMapper productMapper;


    @Override
    public List<ProductExt> findAllProduct(int cid) {
        return productMapper.findAllProduct(cid);
    }

    @Override
    public List<ProductExt> findSencondProduct(int csid) {
        return productMapper.findSencondProduct(csid);
    }


}
