package com.czxy.service.impl;

import com.czxy.domain.Highincidence;
import com.czxy.mapper.HighincidenceMapper;
import com.czxy.service.HighincidenceService;
import javassist.expr.NewArray;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author 
 * @Date 2022/1/21
 */
@Service
@Transactional
public class HighincidenceServiceImpl implements HighincidenceService {

    @Resource
    private HighincidenceMapper highincidenceMapper;

    @Override
    public List<Integer> getHigincidence(String id) {
        List<Integer> list = new ArrayList<>();
        Example example = new Example(Highincidence.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("did",id);
        Highincidence highincidence = highincidenceMapper.selectOneByExample(example);

        list.add(Integer.parseInt(highincidence.getSpring()));
        list.add(Integer.parseInt(highincidence.getSummer()));
        list.add(Integer.parseInt(highincidence.getAutumn()));
        list.add(Integer.parseInt(highincidence.getWinter()));

        return list;
    }
}
