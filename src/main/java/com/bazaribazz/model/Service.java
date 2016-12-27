package com.bazaribazz.model;

import java.awt.*;
import java.util.UUID;

/**
 * Created by dorsa on 12/5/16.
 */
public class Service {
    private UUID id ;
    private String profession;
    private String serviceName;
    private Image image;

    public Service(String profession, String servicename){
        this.id = UUID.randomUUID();
        this.serviceName = servicename;
        this.profession = profession;
        this.image = image;
    }

    public UUID getId() {
        return id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
}
