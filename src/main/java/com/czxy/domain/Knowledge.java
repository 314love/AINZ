package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;


@Table(name = "diseasetable")
public class Knowledge {
    @Id
    private String id;
    private String name;
    private String harm;
    private String symptom;
    private String pmethods;
    private String image;

    @Override
    public String toString() {
        return "Knowledge{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", harm='" + harm + '\'' +
                ", symptom='" + symptom + '\'' +
                ", pmethods='" + pmethods + '\'' +
                ", image='" + image + '\'' +
                '}';
    }

    public Knowledge() {
    }

    public Knowledge(String id, String name, String harm, String symptom, String pmethods, String image) {
        this.id = id;
        this.name = name;
        this.harm = harm;
        this.symptom = symptom;
        this.pmethods = pmethods;
        this.image = image;
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

    public String getHarm() {
        return harm;
    }

    public void setHarm(String harm) {
        this.harm = harm;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getPmethods() {
        return pmethods;
    }

    public void setPmethods(String pmethods) {
        this.pmethods = pmethods;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
