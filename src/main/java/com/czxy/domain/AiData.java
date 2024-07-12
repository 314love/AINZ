package com.czxy.domain;

import java.util.List;



/**
 * 封装百度AI返回的json数据
 */
public class AiData {
    private String log_id;
    private List<DiseasesPests> results;

    public AiData() {
    }

    public AiData(String log_id, List<DiseasesPests> results) {
        this.log_id = log_id;
        this.results = results;
    }

    public String getLog_id() {
        return log_id;
    }

    public void setLog_id(String log_id) {
        this.log_id = log_id;
    }

    public List<DiseasesPests> getResults() {
        return results;
    }

    public void setResults(List<DiseasesPests> results) {
        this.results = results;
    }

    @Override
    public String toString() {
        return "AiData{" +
                "log_id='" + log_id + '\'' +
                ", results=" + results +
                '}';
    }
}
