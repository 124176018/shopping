package com.aishang.controller;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;
import com.aishang.po.ProductExt;
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
    public String doproducts(int cid, Model model) {
        /*点击一级类目显示所有商品的方法*/
        List<ProductExt> allProduct = productService.findAllProduct(cid);
        /*拿到一级类目和二级类目的集合*/
        List<CategoryExt> allCateName = categoryService.findAllCateName();
        model.addAttribute("allCateName",allCateName);
        model.addAttribute("allProduct", allProduct);
        return "serachproduct";

    }
    @RequestMapping("doproductsenconds.do")
    public String doproductsenconds(int csid,Model model){
        /*点击二级类目显示商品的方法*/
        List<CategorySecondExt> sencondProduct = productService.findSencondProduct(csid);
        model.addAttribute("sencondProduct",sencondProduct);
        System.out.println(sencondProduct+"这是什么");
        return "serachproduct";
    }
}
