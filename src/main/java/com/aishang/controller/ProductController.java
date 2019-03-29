package com.aishang.controller;
import com.aishang.po.CategoryExt;
import com.aishang.po.PageBen;
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
public class ProductController {
    @Resource
    private ProductService productService;
    @Resource
    private CategoryService categoryService;

    @RequestMapping("doproducts.do")
    public String doproducts(PageBenForCate pageBenForCate, Model model) {

        /*点击一级类目显示所有商品的方法*/
        productService.findAllProduct(pageBenForCate);
        /*拿到一级类目和二级类目的集合*/
        List<CategoryExt> allCateName = categoryService.findAllCateName();
        model.addAttribute("allCateName",allCateName);
        model.addAttribute("allProduct", pageBenForCate);
        return "serachproduct";
    }


}
