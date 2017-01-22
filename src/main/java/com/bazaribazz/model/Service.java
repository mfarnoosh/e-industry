package com.bazaribazz.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.util.*;

/**
 * Created by dorsa on 12/5/16.
 */
@Entity
@Table(name = "SERVICES")
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id ;
    @NotEmpty
    @Column(name = "SKU",nullable = false,unique = true)
    private String sku;
    @NotEmpty
    @Column(name = "PROFESSION", unique = true, nullable = false)
    private String profession;
    @NotEmpty
    @Column(name = "SERVICE_NAME", nullable = false)
    private String serviceName;
    @Lob
    @Column(name = "IMAGE", length = Integer.MAX_VALUE)
    private byte[] imageFile;
    @Column(name = "KEYWORDS",nullable = false)
    private String[] keywords;
    @NotEmpty
    @Column(name = "STATE",nullable = false)
    private String state;
    @Column(name = "MESSAGE")
    private String message;

    /*public Service(String profession, String servicename, String state){
        this.id = UUID.randomUUID();
        this.serviceName = servicename;
        this.profession = profession;
        this.state = state;
    }*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
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

    public byte[] getImageFile() {
        return imageFile;
    }

    public void setImageFile(byte[] imageFile) {
        this.imageFile = imageFile;
    }

    public String[] getKeywords() {
        return keywords;
    }

    public void setKeywords(String[] keywords) {
        this.keywords = keywords;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString(){
        return "Service [id="+id+"profession="+profession
                +"serviceName="+serviceName+"state="+state+"]";
    }
}
