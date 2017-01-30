package com.bazaribazz.dao;

import com.bazaribazz.model.UploadFile;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by dorsa on 1/29/17.
 */
@Repository("uploadFileDao")
public class FileUploadDaoImpl implements FileUploadDao {

    @Autowired
    private SessionFactory sessionFactory;

    public FileUploadDaoImpl() {
    }

    public FileUploadDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public void save(UploadFile uploadFile) {
        sessionFactory.getCurrentSession().save(uploadFile);
    }
}
