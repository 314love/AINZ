package com.czxy.service;

import com.czxy.domain.DiseasesPests;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;

public interface DiseasesPestsService {

    /**
     * 获取病虫害集合
     * @param bytes
     * @return
     */
    public List<DiseasesPests> getDList(byte[] bytes) throws JsonProcessingException;

    /**
     * 获取置信度最高的病虫害对象
     * @param dlist
     * @return
     */
    public DiseasesPests getDiseasesPeses(List<DiseasesPests> dlist);
}
