package com.czxy.service.impl;

import com.czxy.domain.Effective;
import com.czxy.mapper.EffectiveMapper;
import com.czxy.service.EffectiveService;
import io.swagger.models.auth.In;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author 
 * @Date 2022/1/21
 */
@Service
@Transactional
public class EffectiveServiceImpl implements EffectiveService {

    @Resource
    private EffectiveMapper effectiveMapper;


    @Override
    public List<Integer> getEffective(String id) {
        List<Integer> list = new ArrayList<>();

        Example example = new Example(Effective.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("did",id);

        Effective effective = effectiveMapper.selectOneByExample(example);

        list.add(Integer.parseInt(effective.getAgricultural()));
        list.add(Integer.parseInt(effective.getLife()));
        list.add(Integer.parseInt(effective.getPhysical()));
        list.add(Integer.parseInt(effective.getChemical()));


        return list;
    }
}
