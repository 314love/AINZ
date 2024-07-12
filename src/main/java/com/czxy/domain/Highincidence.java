package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author 
 * @Date 2022/1/21
 */
@Table(name = "highincidence")
public class Highincidence {
    @Id
    private String id;
    private String spring;
    private String summer;
    private String autumn;
    private String winter;
    private String did;

    public Highincidence() {
    }

    public Highincidence(String id, String spring, String summer, String autumn, String winter, String did) {
        this.id = id;
        this.spring = spring;
        this.summer = summer;
        this.autumn = autumn;
        this.winter = winter;
        this.did = did;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSpring() {
        return spring;
    }

    public void setSpring(String spring) {
        this.spring = spring;
    }

    public String getSummer() {
        return summer;
    }

    public void setSummer(String summer) {
        this.summer = summer;
    }

    public String getAutumn() {
        return autumn;
    }

    public void setAutumn(String autumn) {
        this.autumn = autumn;
    }

    public String getWinter() {
        return winter;
    }

    public void setWinter(String winter) {
        this.winter = winter;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "Highincidence{" +
                "id='" + id + '\'' +
                ", spring='" + spring + '\'' +
                ", summer='" + summer + '\'' +
                ", autumn='" + autumn + '\'' +
                ", winter='" + winter + '\'' +
                ", did='" + did + '\'' +
                '}';
    }
}
