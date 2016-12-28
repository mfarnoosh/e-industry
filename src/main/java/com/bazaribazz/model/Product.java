package com.bazaribazz.model;

import java.util.UUID;

/**
 * Created by dorsa on 12/27/16.
 */
public class Product {
    private UUID ID;
    private String productType;
    private String producer;
    private String brand;
    private String productName;
    private double price;
    public Product(String pt, String producer,String brand, String pn,double price){

        ID = UUID.randomUUID();
        this.productType = pt;
        this.producer = producer;
        this.brand = brand;
        this.productName = pn;
        this.price = price;
    }

    public UUID getID() {
        return ID;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
