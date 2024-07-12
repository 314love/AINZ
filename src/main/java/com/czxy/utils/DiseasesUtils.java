package com.czxy.utils;

import com.czxy.baidu.ai.api.EasydlImageClassify;
import com.czxy.domain.AiData;
import com.czxy.domain.DiseasesPests;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;


@Component
public class DiseasesUtils {

    /**
     * 将百度AI返回的json数据转换并返回 集合
     * @param bytes
     * @return
     * @throws JsonProcessingException
     */
    public List<DiseasesPests> getDiseases(byte[] bytes) throws JsonProcessingException {
        //1、获得百度AI返回的json数据
        String jsonStr = EasydlImageClassify.easydlImageClassify(bytes);

        //2、转为JavaBean对象
        ObjectMapper objectMapper = new ObjectMapper();
        AiData aiData = objectMapper.readValue(jsonStr, AiData.class);
        //3、获取集合并返回
        List<DiseasesPests> list = aiData.getResults();
        return list;
    }
}
