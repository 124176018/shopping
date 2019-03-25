package com.aishang.service;

import com.aishang.dao.CategoryMapper;
import com.aishang.po.Category;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service("categoryService")
public class CategoryService implements ICategoryService {
    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> findCateName() {
        return categoryMapper.findCateName();
    }
}
