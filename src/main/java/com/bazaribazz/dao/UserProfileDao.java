package com.bazaribazz.dao;


import com.bazaribazz.model.UserProfile;

import java.util.List;

/**
 * Created by dorsa on 1/11/17.
 */
public interface UserProfileDao {
    List<UserProfile> findAll();

    UserProfile findByType(String type);

    UserProfile findById(int id);
}
