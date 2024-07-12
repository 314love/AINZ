package com.czxy.service;

import com.czxy.domain.Preventiontreatment;

import java.util.List;

public interface PreventiontreatmentService {

    /**
     * 获取对应的防治 方法
     * @return
     */
    public List<Preventiontreatment> getPrevention(String id);
}
