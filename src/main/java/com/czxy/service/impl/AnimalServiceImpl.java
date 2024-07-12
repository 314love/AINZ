package com.czxy.service.impl;

import com.czxy.baidu.ai.api.Animal;
import com.czxy.domain.Animal_AiData;
import com.czxy.domain.Animal_Result;
import com.czxy.service.AnimalService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;



@Service
@Transactional
public class AnimalServiceImpl implements AnimalService {
    @Override
    public Animal_Result getAnimalResult(List<Animal_Result> rlist) throws JsonProcessingException {
        Animal_Result animal_result = new Animal_Result();

        Double max = 0.0;

        for (Animal_Result animalResult : rlist) {
            Double x = Double.parseDouble(animalResult.getScore());
            if(x > max){
                max = x;
                animal_result = animalResult;
            }
        }

        return animal_result;
    }

    @Override
    public List<Double> getScore(List<Animal_Result> rlist) {
        List<Double> dlist = new ArrayList<>();
        for (Animal_Result animal_result : rlist) {
            double x = Double.parseDouble(animal_result.getScore());
            dlist.add(x);
        }

        return dlist;
    }

    @Override
    public List<String> getName(List<Animal_Result> rlist) {
        List<String> slist = new ArrayList<>();
        for (Animal_Result animal_result : rlist) {
            slist.add(animal_result.getName());
        }
        return slist;
    }

    @Override
    public List<Animal_Result> getAnimalList(byte[] bytes) throws JsonProcessingException {
        String jsonStr = Animal.animal(bytes);

        ObjectMapper mapper = new ObjectMapper();

        Animal_AiData animal_aiData = mapper.readValue(jsonStr, Animal_AiData.class);

        List<Animal_Result> rlist = animal_aiData.getResult();

        return rlist;
    }
}
