package com.bazaribazz.view;

import com.bazaribazz.model.Service;

import java.util.List;

/**
 * Created by dorsa on 12/5/16.
 */
public class ServiceForm {
    private List<Service> services;

    public List<Service> getServices(){
        return services;
    }
    public void setServices(List<Service> services){
        this.services = services;
    }
}
