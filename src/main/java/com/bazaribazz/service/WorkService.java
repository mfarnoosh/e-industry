package com.bazaribazz.service;

import com.bazaribazz.model.Work;

/**
 * Created by dorsa on 1/23/17.
 */
public interface WorkService {
    Work findById(int id);

    Work findBySku(String sku);

    void create(Work work);
}
