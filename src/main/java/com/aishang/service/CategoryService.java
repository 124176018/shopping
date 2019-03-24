package com.aishang.service;

import com.aishang.dao.CategoryMapper;
import com.aishang.po.Category;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("categoryService")
public class CategoryService implements ICategoryService {
    @Resource
    private CategoryMapper categoryMapper;
    @Override
    public Category findCateByid(Integer cid) {
        return categoryMapper.findCateByid(cid);
    }
}
