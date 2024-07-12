package com.czxy.service.impl;

import com.czxy.domain.Knowledge;
import com.czxy.domain.KnowledgeVo;
import com.czxy.domain.Record;
import com.czxy.domain.RecordVo;
import com.czxy.mapper.RecordMapper;
import com.czxy.service.RecordService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Created by Intellij IDEA.
 * @Author: qx
 * @Date: 2022/3/6
 */
@Service
public class RecordServiceImpl implements RecordService {
    @Resource
    private RecordMapper recordMapper;
    @Override
    public void saveOrupdate(Record record) {
        List<Record> recordList = recordMapper.selectAll();
        if (!recordList.isEmpty()){
            //进行遍历集合
            for (Record r : recordList) {
                if (r.getName().equals(record.getName())){
                    //如果数据库中已经存在了进行设置id
                    record.setDid(r.getDid());
                    //将次数进行累加
                    record.setCount(r.getCount()+record.getCount());
                    //进行修改存入
                    recordMapper.updateByPrimaryKey(record);
                    return;
                }
            }
        }
        recordMapper.insert(record);
    }




    /**
     * 返回查询的所有内容
     * @return
     */
    @Override
    public PageInfo<Record> list(RecordVo recordVo) {
        PageHelper.startPage(recordVo.getPagenum(),recordVo.getPagesize());
        List<Record> recordList = recordMapper.selectAll();
        PageInfo<Record> recordPageInfo = new PageInfo<>(recordList);
        return recordPageInfo;
    }
}
