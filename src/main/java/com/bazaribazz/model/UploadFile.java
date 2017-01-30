package com.bazaribazz.model;

import javax.persistence.*;

/**
 * Created by dorsa on 1/29/17.
 */
@Entity
@Table(name = "FILES_UPLOAD")
public class UploadFile {
    @Id
    @GeneratedValue
    @Column(name = "FILE_ID")
    private long id;

    @Column(name = "FILE_NAME")
    private String fileName;

    @Column(name = "FILE_DATA")
    private byte[] data;

    @ManyToOne
    private Work work;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public Work getWork() {
        return work;
    }

    public void setWork(Work work) {
        this.work = work;
    }
}
