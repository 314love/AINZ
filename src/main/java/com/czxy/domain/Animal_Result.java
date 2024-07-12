package com.czxy.domain;



public class Animal_Result {
    private String name;
    private String score;
    private Animal_Baike_info baike_info;

    public Animal_Result() {
    }

    public Animal_Result(String name, String score, Animal_Baike_info baike_info) {
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

    public Animal_Baike_info getBaike_info() {
        return baike_info;
    }

    public void setBaike_info(Animal_Baike_info baike_info) {
        this.baike_info = baike_info;
    }

    @Override
    public String toString() {
        return "Animal_Result{" +
                "name='" + name + '\'' +
                ", score='" + score + '\'' +
                ", baike_info=" + baike_info +
                '}';
    }
}
