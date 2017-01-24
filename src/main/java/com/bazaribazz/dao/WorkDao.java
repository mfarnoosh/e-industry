package com.bazaribazz.dao;

import com.bazaribazz.model.work;

import java.util.List;

/**
 * Created by dorsa on 1/22/17.
 */
public interface WorkDao {
    work findById(int id);

    work findByName(String serviceName);

    work findByProfession(String profession);

    void create(work work);

    void deleteById(int id);

    List<work> findAllService();

}
