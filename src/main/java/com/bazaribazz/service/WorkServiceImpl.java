package com.bazaribazz.service;

import com.bazaribazz.dao.WorkDao;
import com.bazaribazz.model.Work;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by dorsa on 1/23/17.
 */
@Service("workService")
@Transactional
public class WorkServiceImpl implements WorkService {

    @Autowired
    public WorkDao dao;
    @Override
    public Work findById(int id) {
        return dao.findById(id);
    }

    @Override
    public Work findBySku(String sku) {
        return null;
    }

    @Override
    public void create(Work work) {
        dao.create(work);
    }

    @Override
    public void update(Work work) {
        Work entity = dao.findById(work.getId());
        if (entity!=null){
            entity.setServiceName(work.getServiceName());
            entity.setProfession(work.getProfession());
            entity.setState(work.getState());
        }
    }

    @Override
    public List<Work> findAllWorks() {

        return dao.findAllService();
    }
}
