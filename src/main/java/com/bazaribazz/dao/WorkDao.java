package com.bazaribazz.dao;

import com.bazaribazz.model.Work;

import java.util.List;

/**
 * Created by dorsa on 1/22/17.
 */
public interface WorkDao {
    Work findById(int id);

    Work findByName(String serviceName);

    Work findByProfession(String profession);

    void create(Work work);

    void deleteById(int id);

    List<Work> findAllService();

}