package com.czxy.service.impl;

import com.czxy.domain.Impact;
import com.czxy.mapper.ImpactMapper;
import com.czxy.service.ImpactService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author 
 * @Date 2022/1/21
 */
@Service
@Transactional
public class ImpactServiceImpl implements ImpactService {

    @Resource
    private ImpactMapper impactMapper;

    @Override
    public List<Impact> getImpact(String id) {
        Example example = new Example(Impact.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("did",id);

        List<Impact> list = impactMapper.selectByExample(example);

        return list;
    }
}
