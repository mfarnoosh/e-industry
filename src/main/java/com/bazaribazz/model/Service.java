package com.bazaribazz.model;

import java.awt.*;
import java.util.UUID;

/**
 * Created by dorsa on 12/5/16.
 */
public class Service {
    private UUID id ;
    private String serviceName;
    private String installer;
    private Image image;

    public Service(String serviceName, String installer){
        this.id = UUID.randomUUID();
        this.serviceName = serviceName;
        this.installer = installer;
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

    public String getInstaller() {
        return installer;
    }

    public void setInstaller(String installer) {
        this.installer = installer;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
}
