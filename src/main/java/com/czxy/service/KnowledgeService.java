package com.czxy.service;

import com.czxy.domain.Knowledge;
import com.czxy.domain.KnowledgeVo;
import com.github.pagehelper.PageInfo;


public interface KnowledgeService {
    PageInfo<Knowledge> selectAll(KnowledgeVo KnowledgeVo);
    Knowledge view(String id);
}
