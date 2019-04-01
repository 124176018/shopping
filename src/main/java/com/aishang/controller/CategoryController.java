package com.aishang.controller;
import com.aishang.po.CategoryExt;
import com.aishang.service.CategoryService;
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

    @RequestMapping("selectCateName.do")
    public String selectCateName(Model model){
        List<CategoryExt> allCateName = categoryService.findAllCateName();
        model.addAttribute("listcateNameseconds",allCateName);
        return "index";
    }
}
