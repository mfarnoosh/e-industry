package com.bazaribazz.service;

import com.bazaribazz.dao.CategoryDao;
import com.bazaribazz.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by dorsa on 2/17/17.
 */
@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    public CategoryDao dao;
    @Override
    public List<Category> findAllCategory() {
        return dao.findAllCategory();
    }

    @Override
    public void insertCategory(Category category) {
        dao.insertCategory(category);
    }

    @Override
    public List<Category> findByParent(Integer parentId) {
        return dao.findByParent(parentId);
    }

    @Override
    public void delete(Category category) {

    }
}
