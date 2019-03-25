package com.aishang.controller;

import com.aishang.po.Category;
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
        List<Category> cateName = categoryService.findCateName();
        model.addAttribute("listcateName",cateName);
        return "index";
    }
}
