package com.czxy.service.impl;

import com.czxy.baidu.ai.api.Plant;
import com.czxy.domain.Plant_AiData;
import com.czxy.domain.Plant_Result;
import com.czxy.service.PlantService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author 
 * @Date 2022/1/27
 */
@Service
@Transactional
public class PlantServiceImpl implements PlantService {
    @Override
    public List<Plant_Result> getPlantList(byte[] bytes) throws JsonProcessingException {
        String plantStr = Plant.plant(bytes);

        ObjectMapper mapper = new ObjectMapper();

        Plant_AiData plant_aiData = mapper.readValue(plantStr, Plant_AiData.class);

        List<Plant_Result> rlist = plant_aiData.getResult();

        return rlist;
    }

    @Override
    public Plant_Result getPlant(List<Plant_Result> plist) {
        Plant_Result plant_result = new Plant_Result();

        Double x = 0.0;

        for (Plant_Result plantResult : plist) {
            Double a = Double.parseDouble(plantResult.getScore());
            if(a > x){
                x = a;
                plant_result = plantResult;
            }
        }

        return plant_result;
    }

    @Override
    public List<String> getName(List<Plant_Result> plist) {
        List<String> slist = new ArrayList<>();

        for (Plant_Result plant_result : plist) {
            slist.add(plant_result.getName());
        }

        return slist;
    }

    @Override
    public List<Double> getScore(List<Plant_Result> plist) {
        List<Double> dlist = new ArrayList<>();

        for (Plant_Result plant_result : plist) {
            dlist.add(Double.parseDouble(plant_result.getScore()));
        }

        return dlist;
    }
}
