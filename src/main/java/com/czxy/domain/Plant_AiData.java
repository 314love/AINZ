package com.czxy.domain;

import java.util.List;

/**
 * @Author 
 * @Date 2022/1/27
 */

public class Plant_AiData {
    private String log_id;
    private List<Plant_Result> result;

    public Plant_AiData() {
    }

    public Plant_AiData(String log_id, List<Plant_Result> result) {
        this.log_id = log_id;
        this.result = result;
    }

    public String getLog_id() {
        return log_id;
    }

    public void setLog_id(String log_id) {
        this.log_id = log_id;
    }

    public List<Plant_Result> getResult() {
        return result;
    }

    public void setResult(List<Plant_Result> result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "Plant_AiData{" +
                "log_id='" + log_id + '\'' +
                ", result=" + result +
                '}';
    }
}
