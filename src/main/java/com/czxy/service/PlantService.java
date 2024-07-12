package com.czxy.service;

import com.czxy.baidu.ai.api.Animal;
import com.czxy.baidu.ai.api.Plant;
import com.czxy.domain.Animal_Result;
import com.czxy.domain.Plant_Result;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;

public interface PlantService {

    /**
     * 获取植物集合
     * @param bytes
     * @return
     */
    public List<Plant_Result> getPlantList(byte[] bytes) throws JsonProcessingException;

    /**
     * 获取置信度最高的植物
     * @param plist
     * @return
     */
    public Plant_Result getPlant(List<Plant_Result> plist);

    /**
     * 获取置信度名称
     * @param plist
     * @return
     */
    public List<String> getName(List<Plant_Result> plist);

    /**
     * 获取置信度最高的植物
     * @return
     */
    public List<Double> getScore(List<Plant_Result> plist);
}
