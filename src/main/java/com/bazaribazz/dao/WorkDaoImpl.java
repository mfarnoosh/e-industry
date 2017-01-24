package com.bazaribazz.dao;

import com.bazaribazz.model.work;
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
public class WorkDaoImpl extends AbstractDao<Integer,work> implements WorkDao {
    static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public work findById(int id) {
        work work = getByKey(id);
        if (work !=null){
            Hibernate.initialize(work);
        }
        return work;
    }

    @Override
    public work findByName(String serviceName) {
        return null;
    }

    @Override
    public work findByProfession(String profession) {
        return null;
    }

    @Override
    public void create(work work) {
//        logger.info("SSO : {}", sso);

    }

    @Override
    public void deleteById(int id) {

    }

    @Override
    public List<work> findAllService() {
        return null;
    }
}
