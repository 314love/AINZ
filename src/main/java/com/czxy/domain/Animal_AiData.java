package com.czxy.domain;

import java.util.List;



public class Animal_AiData {
    private String log_id;
    private List<Animal_Result> result;

    public Animal_AiData() {
    }

    public Animal_AiData(String log_id, List<Animal_Result> result) {
        this.log_id = log_id;
        this.result = result;
    }

    public String getLog_id() {
        return log_id;
    }

    public void setLog_id(String log_id) {
        this.log_id = log_id;
    }

    public List<Animal_Result> getResult() {
        return result;
    }

    public void setResult(List<Animal_Result> result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "Animal_AiData{" +
                "log_id='" + log_id + '\'' +
                ", result=" + result +
                '}';
    }
}
