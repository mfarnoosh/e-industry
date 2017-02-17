package com.bazaribazz.dao;

import com.bazaribazz.model.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dorsa on 2/16/17.
 */
@Repository("categoryDao")
public class CategoryDaoImpl extends AbstractDao<Integer,Category> implements CategoryDao {
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
}
