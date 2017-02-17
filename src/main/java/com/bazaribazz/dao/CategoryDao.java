package com.bazaribazz.dao;

import com.bazaribazz.model.Category;

import java.util.List;

/**
 * Created by dorsa on 2/16/17.
 */
public interface CategoryDao {

    List<Category> findAllCategory();
    void insertCategory(Category category);
    List<Category> findByParent();
    void delete(Category category);
}
