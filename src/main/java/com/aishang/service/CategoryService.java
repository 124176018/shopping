package com.aishang.service;

import com.aishang.dao.CategoryMapper;
import com.aishang.po.Category;
import com.aishang.po.CategoryExt;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryService implements ICategoryService {
    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public List<CategoryExt> findAllCateName() {
        return categoryMapper.findAllCateName();
    }
}
