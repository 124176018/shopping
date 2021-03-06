package com.aishang.controller;
import com.aishang.po.CategoryExt;
import com.aishang.po.PageBenForCate;
import com.aishang.service.CategoryService;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cate")
public class CategoryController {
    @Resource
    private CategoryService categoryService;
    @Resource
    private ProductService productService;

    @RequestMapping("selectCateName.do")
    public String selectCateName(Model model, PageBenForCate pageBenForCate){
        List<CategoryExt> allCateName = categoryService.findAllCateName();
        productService.findAllProduct(pageBenForCate);
        model.addAttribute("allCateName",allCateName);
        model.addAttribute("allProduct", pageBenForCate);
        model.addAttribute("listcateNameseconds",allCateName);
        return "index";
    }
}
