package com.czxy.service.impl;

import com.czxy.domain.DiseasesPests;
import com.czxy.mapper.DiseasesPestsMapper;
import com.czxy.service.DiseasesPestsService;
import com.czxy.utils.DiseasesUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class DiseasesPestsServiceImpl implements DiseasesPestsService {

    @Resource
    private DiseasesUtils diseasesUtils;

    @Resource
    private DiseasesPestsMapper diseasesPestsMapper;

    @Override
    public List<DiseasesPests> getDList(byte[] bytes) throws JsonProcessingException {
        List<DiseasesPests> dlist = diseasesUtils.getDiseases(bytes);



        List<DiseasesPests> list = new ArrayList<>();

        //通过病虫害的名称 找到 病虫害对应的信息 添加进集合 并返回
        for (DiseasesPests diseasesPests : dlist) {
            Example example = new Example(DiseasesPests.class);
            Example.Criteria criteria = example.createCriteria();

            criteria.andEqualTo("name",diseasesPests.getName());
            DiseasesPests diseasesPests1 = diseasesPestsMapper.selectOneByExample(example);

            diseasesPests1.setScore(diseasesPests.getScore());
            list.add(diseasesPests1);
        }

        return list;
    }

    @Override
    public DiseasesPests getDiseasesPeses(List<DiseasesPests> dlist) {
        double Max = Double.MIN_EXPONENT;
        DiseasesPests dis = null;
        for (DiseasesPests diseasesPests : dlist) {
            String score = diseasesPests.getScore();
            double v = Double.parseDouble(score);
            if(v > Max){
                Max = v;
                dis = diseasesPests;
            }
        }
        return dis;
    }
}
