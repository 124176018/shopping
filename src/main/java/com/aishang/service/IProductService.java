package com.aishang.service;
import com.aishang.po.PageBenForCate;
import com.aishang.po.ProductExt;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public interface IProductService {
    /*查询所有情况下的所有商品*/
    void findAllProduct(PageBenForCate pageBenForCate);



}
