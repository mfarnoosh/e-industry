package com.bazaribazz.service;

import com.bazaribazz.model.Category;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by dorsa on 2/17/17.
 */
@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
    @Override
    public List<Category> findAllCategory() {
        return null;
    }

    @Override
    public void insertCategory(Category category) {

    }

    @Override
    public List<Category> findByParent() {
        return null;
    }

    @Override
    public void delete(Category category) {

    }
}
