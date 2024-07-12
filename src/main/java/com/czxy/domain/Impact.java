package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author 
 * @Date 2022/1/21
 */

/**
 * 病虫害为害对象
 */
@Table(name = "impact")
public class Impact {
    @Id
    private String id;
    private String name;
    private String proportion;
    private String did;

    public Impact() {
    }

    public Impact(String id, String name, String proportion, String did) {
        this.id = id;
        this.name = name;
        this.proportion = proportion;
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

    public String getProportion() {
        return proportion;
    }

    public void setProportion(String proportion) {
        this.proportion = proportion;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "Impact{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", proportion='" + proportion + '\'' +
                ", did='" + did + '\'' +
                '}';
    }
}
