package com.bazaribazz.service;

import com.bazaribazz.model.work;

/**
 * Created by dorsa on 1/23/17.
 */
public interface WorkService {
    work findById(int id);

    work findBySku(String sku);

    void create(work work);
}
