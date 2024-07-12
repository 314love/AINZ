package com.czxy.service;

import com.czxy.domain.Record;
import com.czxy.domain.RecordVo;
import com.github.pagehelper.PageInfo;

import java.util.ArrayList;
import java.util.List;

/**
 * @Created by Intellij IDEA.
 * @Author: qx
 * @Date: 2022/3/6
 */

public interface RecordService {
    void saveOrupdate(Record record);

    PageInfo<Record> list(RecordVo recordVo);
}
