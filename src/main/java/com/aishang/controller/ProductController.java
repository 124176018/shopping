package com.aishang.controller;

import com.aishang.dao.ProductMapper;
import com.aishang.po.CategoryExt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cate")
public class ProductController {
    @Resource
    private ProductMapper productMapper;
    @RequestMapping("doproducts.do")
    public String  doproducts(Integer cid, Model model){
        /*List<CategoryExt> allProduct = productMapper.findAllProduct(cid);
        model.addAttribute(allProduct);*/
        System.out.println("有没有啊");
        return "index";
    }
}
