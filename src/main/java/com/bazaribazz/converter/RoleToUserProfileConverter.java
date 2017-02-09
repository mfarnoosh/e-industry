package com.bazaribazz.converter;

import com.bazaribazz.model.UserProfile;
import com.bazaribazz.service.UserProfileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 * Created by dorsa on 1/7/17.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile> {
    static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);

    @Autowired
    UserProfileService userProfileService;

    /**
     * Gets UserProfile by Id
     * @see Converter#convert(Object)
     */
    @Override
    public UserProfile convert(Object element) {
        Integer id = Integer.parseInt((String)element);
        UserProfile profile= userProfileService.findById(id);
        logger.info("Profile : {}",profile);
        return null;
    }
    /*
     * Gets UserProfile by type
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    /*public UserProfile convert(Object element) {
        String type = (String)element;
        UserProfile profile= userProfileService.findByType(type);
        System.out.println("Profile ... : "+profile);
        return profile;
    }*/
}
