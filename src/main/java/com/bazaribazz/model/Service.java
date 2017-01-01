package com.bazaribazz.model;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.*;

/**
 * Created by dorsa on 12/5/16.
 */
public class Service {
    private UUID id ;
    private String profession;
    private String serviceName;
    private MultipartFile imageFile;
    private String state;

    public Service(String profession, String servicename, String state){
        this.id = UUID.randomUUID();
        this.serviceName = servicename;
        this.profession = profession;
        this.state = state;
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

    public MultipartFile getImageFile() {
        return imageFile;
    }

    public void setImageFile(MultipartFile imageFile) {
        this.imageFile = imageFile;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
