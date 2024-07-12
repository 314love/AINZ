package com.czxy.service.impl;

import com.czxy.domain.Preventiontreatment;
import com.czxy.mapper.PreventiontreatmentMapper;
import com.czxy.service.PreventiontreatmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author 
 * @Date 2022/1/21
 */
@Service
@Transactional
public class PreventiontreatmentServiceImpl implements PreventiontreatmentService {

    @Resource
    private PreventiontreatmentMapper preventiontreatmentMapper;

    @Override
    public List<Preventiontreatment> getPrevention(String id) {
        Example example = new Example(Preventiontreatment.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("did",id);

        List<Preventiontreatment> plist = preventiontreatmentMapper.selectByExample(example);

        return plist;
    }
}
