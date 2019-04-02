package com.aishang.service;
import com.aishang.dao.ProductMapper;
import com.aishang.po.PageBenForCate;
import com.aishang.po.ProductExt;
import com.aishang.po.ProductImageExt;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductService implements IProductService {
    @Resource
    private ProductMapper productMapper;

    @Override
    public void findAllProduct(PageBenForCate pageBenForCate) {

        Integer allCount = productMapper.findAllCount(pageBenForCate);/*获取总条数*/
        pageBenForCate.setTotalCount(allCount);/*总条数赋值*/
        List<ProductExt> allProduct = productMapper.findAllProduct(pageBenForCate);
        pageBenForCate.setList(allProduct);


    }

    @Override
    public ProductImageExt findProduct(Integer pid) {
        return productMapper.findProduct(pid);
    }


}