package com.bazaribazz.service;

import com.bazaribazz.dao.WorkDao;
import com.bazaribazz.model.work;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * Created by dorsa on 1/23/17.
 */
@Service("workService")
@Transactional
public class WorkServiceImpl implements WorkService {

    @Autowired
    public WorkDao dao;
    @Override
    public work findById(int id) {
        return null;
    }

    @Override
    public work findBySku(String sku) {
        return null;
    }

    @Override
    public void create(work work) {

    }
}
