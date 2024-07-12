package com.czxy.service.impl;

import com.czxy.domain.Knowledge;
import com.czxy.domain.KnowledgeVo;
import com.czxy.mapper.KnowledgeMapper;
import com.czxy.service.KnowledgeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.List;


@Service
public class KnowledgeServiceImpl implements KnowledgeService {
    @Resource
    private KnowledgeMapper knowledgeMapper;
    @Override
    public PageInfo<Knowledge> selectAll(KnowledgeVo KnowledgeVo) {
            Example example = new Example(Knowledge.class);
            Example.Criteria criteria = example.createCriteria();
            if (KnowledgeVo.getName()!=null&&!"".equals(KnowledgeVo.getName())){
                criteria.andLike("name", "%"+KnowledgeVo.getName()+"%");
            }
            PageHelper.startPage(KnowledgeVo.getPagenum(), KnowledgeVo.getPagesize());
            List<Knowledge> knowledgeslist = knowledgeMapper.selectByExample(example);
            PageInfo<Knowledge> knowledgePageInfo = new PageInfo<>(knowledgeslist);
            return knowledgePageInfo;
    }

    @Override
    public Knowledge view(String id) {
        Knowledge knowledge = knowledgeMapper.selectByPrimaryKey(id);
        return knowledge;
    }
}
