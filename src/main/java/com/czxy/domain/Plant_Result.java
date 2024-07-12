package com.czxy.domain;

/**
 * @Author 
 * @Date 2022/1/27
 */

public class Plant_Result {
    private String name;
    private String score;
    private Plant_Baike_info baike_info;

    public Plant_Result() {
    }

    public Plant_Result(String name, String score, Plant_Baike_info baike_info) {
        this.name = name;
        this.score = score;
        this.baike_info = baike_info;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public Plant_Baike_info getBaike_info() {
        return baike_info;
    }

    public void setBaike_info(Plant_Baike_info baike_info) {
        this.baike_info = baike_info;
    }

    @Override
    public String toString() {
        return "Plant_Result{" +
                "name='" + name + '\'' +
                ", score='" + score + '\'' +
                ", baike_info=" + baike_info +
                '}';
    }
}
