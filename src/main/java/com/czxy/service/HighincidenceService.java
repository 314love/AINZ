package com.czxy.service;

import java.util.List;

public interface HighincidenceService {

    /**
     * 返回 病虫害高发季节的 数据源
     * @param id
     * @return
     */
    public List<Integer> getHigincidence(String id);
}
