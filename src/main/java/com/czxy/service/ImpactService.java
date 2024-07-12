package com.czxy.service;

import com.czxy.domain.Impact;

import java.util.List;
import java.util.Map;

public interface ImpactService {

    /**
     * 返回 病虫害为害 的农作物集合
     * @return
     */
    public List<Impact> getImpact(String id);
}
