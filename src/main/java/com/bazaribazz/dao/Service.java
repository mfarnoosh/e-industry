package com.bazaribazz.dao;

import java.awt.*;
import java.util.UUID;

/**
 * Created by dorsa on 12/5/16.
 */
public class Service {
    private UUID id ;
    private String serviceName;
    private String details;
    private Image image;

    public Service(String serviceName){
        this.id = UUID.randomUUID();
        this.serviceName = serviceName;
        this.image = image;
    }

    public UUID getId() {
        return id;
    }

    /*public void setId(UUID id) {
        this.id = id;
    }*/

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
}
