package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author 
 * @Date 2022/1/21
 */

/**
 * 病虫害表
 */
@Table(name = "diseasespests")
public class DiseasesPests {
    @Id
    private String did;
    private String name;
    private String comname;
    private String symptoms;
    private String nature;
    private String basicdesc;
    private String detailsdesc;
    private String score;
    private String dmethods;

    public DiseasesPests() {
    }

    public DiseasesPests(String did, String name, String comname, String symptoms, String nature, String basicdesc, String detailsdesc, String score, String dmethods) {
        this.did = did;
        this.name = name;
        this.comname = comname;
        this.symptoms = symptoms;
        this.nature = nature;
        this.basicdesc = basicdesc;
        this.detailsdesc = detailsdesc;
        this.score = score;
        this.dmethods = dmethods;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getBasicdesc() {
        return basicdesc;
    }

    public void setBasicdesc(String basicdesc) {
        this.basicdesc = basicdesc;
    }

    public String getDetailsdesc() {
        return detailsdesc;
    }

    public void setDetailsdesc(String detailsdesc) {
        this.detailsdesc = detailsdesc;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getDmethods() {
        return dmethods;
    }

    public void setDmethods(String dmethods) {
        this.dmethods = dmethods;
    }

    @Override
    public String toString() {
        return "DiseasesPests{" +
                "did='" + did + '\'' +
                ", name='" + name + '\'' +
                ", comname='" + comname + '\'' +
                ", symptoms='" + symptoms + '\'' +
                ", nature='" + nature + '\'' +
                ", basicdesc='" + basicdesc + '\'' +
                ", detailsdesc='" + detailsdesc + '\'' +
                ", score='" + score + '\'' +
                ", dmethods='" + dmethods + '\'' +
                '}';
    }
}
