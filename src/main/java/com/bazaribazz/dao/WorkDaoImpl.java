package com.bazaribazz.dao;

import com.bazaribazz.model.UploadFile;
import com.bazaribazz.model.User;
import com.bazaribazz.model.Work;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.omg.PortableInterceptor.USER_EXCEPTION;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
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
            Hibernate.initialize(work.getOwner());
            for (UploadFile uf: work.getUploadFile()){
                Hibernate.initialize(uf.getData());
            }
        }
        return work;
    }

    @Override
    public List<Work> findByName(String serviceName) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("serviceName",serviceName));
        List<Work> works = (List<Work>) criteria.list();
        if (works!=null){
            for (Work work: works){
                Hibernate.initialize(work.getOwner().getSsoId());
            }
        }
        return works;
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
        Criteria criteria = createEntityCriteria().addOrder(Order.desc("createDate"));
        criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
        List<Work> works = (List<Work>) criteria.list();
        for (Work work: works){
            Hibernate.initialize(work.getOwner().getSsoId());
        }
        return works;
    }

    /*---pagination---*/
    @Override
    public List<Work> findTop10Service() {
        Criteria criteria = createEntityCriteria().addOrder(Order.desc("createDate"));
        criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
        criteria.setFirstResult(0);
        criteria.setMaxResults(1);
        List<Work> works = (List<Work>) criteria.list();
        for (Work work: works){
            Hibernate.initialize(work.getOwner().getSsoId());
        }
        return works;
    }

    @Override
    public List<Work> searchWork(String string) {
        Criteria criteria = createEntityCriteria().addOrder(Order.desc("createDate"));
        criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
        List<Work> works = (List<Work>) criteria.list();
        List<Work> result = new ArrayList<Work>();
        String[] strArray=string.split(" ");
        for (String str: strArray){
            for (Work work:works){
                if (work.getServiceName().contains(str) || work.getState().contains(str) || work.getProfession().contains(str)){
                    result.add(work);
                    Hibernate.initialize(work.getOwner().getSsoId());
                }
            }
        }

        return result;
    }

    @Override
    public List<Work> findByOwner(User owner) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("owner",owner));
        List<Work> works = (List<Work>) criteria.list();
        if (works!=null){
            for (Work work: works){
                Hibernate.initialize(work.getOwner().getSsoId());
            }
        }
        return works;
    }
}
