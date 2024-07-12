package com.czxy.domain;

/**
 * @Author 
 * @Date 2022/1/27
 */

public class Plant_Baike_info {
    private String baike_url;
    private String image_url;
    private String description;

    public Plant_Baike_info() {
    }

    public Plant_Baike_info(String baike_url, String image_url, String description) {
        this.baike_url = baike_url;
        this.image_url = image_url;
        this.description = description;
    }

    public String getBaike_url() {
        return baike_url;
    }

    public void setBaike_url(String baike_url) {
        this.baike_url = baike_url;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Plant_Baike_info{" +
                "baike_url='" + baike_url + '\'' +
                ", image_url='" + image_url + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
