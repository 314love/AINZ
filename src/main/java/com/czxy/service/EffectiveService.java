package com.czxy.service;

import com.czxy.domain.Effective;
import io.swagger.models.auth.In;

import java.util.List;

public interface EffectiveService {

    /**
     * 返回防治方法 数据源
     * @return
     */
    public List<Integer> getEffective(String id);
}
