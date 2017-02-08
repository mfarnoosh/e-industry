package com.bazaribazz.service;

import com.bazaribazz.model.Work;

import java.util.List;

/**
 * Created by dorsa on 1/23/17.
 */
public interface WorkService {
    Work findById(int id);

    Work findBySku(String sku);

    List<Work> findByName(String serviceName);

    void create(Work work);

    void update(Work work);

    List<Work> findAllWorks();
}
