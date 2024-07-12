package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author 
 * @Date 2022/1/21
 */

/**
 * 防治方法推荐
 */
@Table(name = "preventiontreatment")
public class Preventiontreatment {
    @Id
    private String id;
    private String name;
    private String preventmethod;
    private String did;

    public Preventiontreatment() {
    }

    public Preventiontreatment(String id, String name, String preventmethod, String did) {
        this.id = id;
        this.name = name;
        this.preventmethod = preventmethod;
        this.did = did;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPreventmethod() {
        return preventmethod;
    }

    public void setPreventmethod(String preventmethod) {
        this.preventmethod = preventmethod;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "Preventiontreatment{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", preventmethod='" + preventmethod + '\'' +
                ", did='" + did + '\'' +
                '}';
    }
}
