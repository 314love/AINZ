package com.czxy.service;

import com.czxy.baidu.ai.api.Animal;
import com.czxy.domain.Animal_Baike_info;
import com.czxy.domain.Animal_Result;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;

public interface AnimalService {

    /**
     * 获取置信度最高的动物
     * @return
     */
    public Animal_Result getAnimalResult(List<Animal_Result> rlist) throws JsonProcessingException;

    /**
     * 获取置信度数据
     * @return
     */
    public List<Double> getScore(List<Animal_Result> rlist);


    /**
     * 获取置信度名称
     * @return
     */
    public List<String> getName(List<Animal_Result> rlist);

    /**
     * 获取动物集合
     * @param bytes
     * @return
     * @throws JsonProcessingException
     */
    public List<Animal_Result> getAnimalList(byte[] bytes) throws JsonProcessingException;
}
