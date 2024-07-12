package com.czxy.controller;

import com.czxy.domain.Knowledge;
import com.czxy.domain.KnowledgeVo;
import com.czxy.service.KnowledgeService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.StringReader;
import java.util.List;


@Controller
@RequestMapping("/knowledge")
public class KnowledgeController {
    @Resource
    private KnowledgeService knowledgeService;
    //进行查询所有
    @RequestMapping("/selectAll")
    public String list(HttpSession httpSession, KnowledgeVo knowledgeVo){
        System.out.println(knowledgeVo.toString());
        PageInfo<Knowledge> knowledgePageInfo = knowledgeService.selectAll(knowledgeVo);
        List<Knowledge> list = knowledgePageInfo.getList();
        for (Knowledge k : list) {
            System.out.println(k.toString());
        }
        httpSession.setAttribute("pageInfo",knowledgePageInfo);
        httpSession.setAttribute("knowledgeVo",knowledgeVo);
        return "redirect:/cyclopedia.jsp";
    }
    //查询详情
    @RequestMapping("/particulars")
    public String view(HttpSession httpSession, Knowledge knowledge){
        System.out.println(knowledge);
        Knowledge knowledgE = knowledgeService.view(knowledge.getId());
        httpSession.setAttribute("knowledgE",knowledgE);
        return "redirect:/particulars.jsp";
    }
}
