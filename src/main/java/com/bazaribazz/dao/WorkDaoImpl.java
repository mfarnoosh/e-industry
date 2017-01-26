package com.bazaribazz.dao;

import com.bazaribazz.model.Work;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dorsa on 1/22/17.
 */
@Repository("workDao")
public class WorkDaoImpl extends AbstractDao<Integer,Work> implements WorkDao {
    static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public Work findById(int id) {
        Work work = getByKey(id);
        if (work !=null){
            Hibernate.initialize(work);
        }
        return work;
    }

    @Override
    public Work findByName(String serviceName) {
        return null;
    }

    @Override
    public Work findByProfession(String profession) {
        return null;
    }

    @Override
    public void create(Work work) {
        persist(work);
    }

    @Override
    public void deleteById(int id) {

    }

    @Override
    public List<Work> findAllService() {
        return null;
    }
}