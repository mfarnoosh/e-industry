package com.bazaribazz.dao;

import com.bazaribazz.model.Category;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dorsa on 2/16/17.
 */
@Repository("categoryDao")
public class CategoryDaoImpl extends AbstractDao<Integer,Category> implements CategoryDao {
    @Override
    public List<Category> findAllCategory() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("parentId"));
        criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
        List<Category> categories = (List<Category>) criteria.list();
//        for (Category category:categories){
//            Hibernate.initialize(category.getParentCategory());
//        }
        return categories;
    }

    @Override
    public void insertCategory(Category category) {
        persist(category);
    }

    @Override
    public List<Category> findByParent(Integer parentId) {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("sortOrder"));
        criteria.add(Restrictions.eq("parentId",parentId));
        List<Category> categories = (List<Category>) criteria.list();
        return categories;
    }
}
