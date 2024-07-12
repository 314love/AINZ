package com.czxy.controller;

import com.czxy.domain.Record;
import com.czxy.domain.RecordVo;
import com.czxy.service.RecordService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Created by Intellij IDEA.
 * @Author: qx
 * @Date: 2022/3/7
 */
@Controller
@RequestMapping("/history")
public class HistoryController {
    @Resource
    private RecordService recordService;
    //进行查询所有
    @RequestMapping("/selectAll")
    public String list(HttpSession httpSession, RecordVo recordVo){
        PageInfo<Record> recordPageInfo = recordService.list(recordVo);
        List<Record> list = recordPageInfo.getList();
        for (Record r : list) {
            System.out.println(r.toString());
        }
        httpSession.setAttribute("pageInfo", recordPageInfo);
        return "redirect:/record.jsp";
    }
}
