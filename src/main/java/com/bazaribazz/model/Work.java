package com.bazaribazz.model;




import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.*;

/**
 * Created by dorsa on 12/5/16.
 */
@Entity
@Table(name = "WORK")
public class Work {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id ;
    @NotEmpty
    @Column(name = "PROFESSION", unique = true, nullable = false)
    private String profession;
    @NotEmpty
    @Column(name = "SERVICE_NAME", nullable = false)
    private String serviceName;
    @NotEmpty
    @Column(name = "STATE",nullable = false)
    private String state;

    @ManyToOne
    private User owner;


    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATE_DATE", nullable = false)
    private Date createDate;

    @OneToMany(mappedBy = "id")
    private Set<UploadFile> uploadFile;
    /*@Column(name = "KEYWORDS",nullable = false)
    private String[] keywords;*/

    @Transient
    private String[] images;

    /*public Work(String profession, String servicename, String state){
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

    /*public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }*/

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

    /*public byte[] getImageFile() {
        return imageFile;
    }

    public void setImageFile(byte[] imageFile) {
        this.imageFile = imageFile;
    }*/

    /*public String[] getKeywords() {
        return keywords;
    }

    public void setKeywords(String[] keywords) {
        this.keywords = keywords;
    }*/

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Set<UploadFile> getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(Set<UploadFile> uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String[] getImages() {
        return images;
    }

    public void setImages(String[] images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Work{" +
                "id=" + id +
//                ", sku='" + sku + '\'' +
                ", profession='" + profession + '\'' +
                ", serviceName='" + serviceName + '\'' +
//                ", imageFile=" + Arrays.toString(imageFile) +
//                ", keywords=" + Arrays.toString(keywords) +
                ", state='" + state + '\'' +
                ", owner=" + owner +
                ", createDate=" + createDate +
                '}';
    }
}
