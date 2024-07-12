package com.czxy.controller;

import com.czxy.domain.DiseasesPests;
import com.czxy.domain.Impact;
import com.czxy.domain.Preventiontreatment;
import com.czxy.domain.Record;
import com.czxy.service.*;
import com.czxy.utils.Base64Util;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;


@Controller
@RequestMapping("/DiseasesPests")
public class DiseasesPestsController {
    @Resource
    private RecordService recordService;
    @Resource
    private DiseasesPestsService diseasesPestsService;

    @Resource
    private EffectiveService effectiveService;

    @Resource
    private HighincidenceService highincidenceService;

    @Resource
    private ImpactService impactService;

    @Resource
    private PreventiontreatmentService preventiontreatmentService;

    /**
     * 存储病虫害集合对象
     */
    public static List<DiseasesPests> dList;

    /**
     * 病虫害对象id
     */
    public static String id;
    /**
     * 存储保存对象的历史记录
     */
    public static ArrayList<Record> recordArrayList =new ArrayList<>();

    /**
     * 返回病虫害对象数据
     * @param picFile
     * @return
     * @throws IOException
     */
    @RequestMapping("/Basic")
    public String BasicTesting(@RequestParam(value = "picFile") MultipartFile picFile,HttpServletRequest request) throws IOException {
        //1、获取病虫害集合
        byte[] bytes = picFile.getBytes();

        try {
            dList = diseasesPestsService.getDList(bytes);
        }catch (Exception e){
            return "redirect:/error/error.jsp";
        }

        System.out.println("Dlist:" + dList);

        //获取相似度最高的病虫害对象
        DiseasesPests diseasesPeses = diseasesPestsService.getDiseasesPeses(dList);

        id = diseasesPeses.getDid();

        List<Integer> elist = effectiveService.getEffective(diseasesPeses.getDid());

        List<Integer> hlist = highincidenceService.getHigincidence(diseasesPeses.getDid());

        List<Preventiontreatment> plist = preventiontreatmentService.getPrevention(diseasesPeses.getDid());


        //获取session作用域 将数据存入 session作用域
        HttpSession session = request.getSession();
        //防治方法 占比
        session.setAttribute("elist",elist);
        //高发季节
        session.setAttribute("hlist",hlist);
        //病虫害对象
        session.setAttribute("diseasesPeses",diseasesPeses);
        //防治措施
        session.setAttribute("plist",plist);
        //将图片转成base64编码 存入session作用域
        String encode = Base64Util.encode(bytes);
        session.setAttribute("imgStr",encode);
//        if (recordArrayList.isEmpty()){
//            Record record = new Record();
//            record.setName(diseasesPeses.getName());
//            record.setTime(new Date().toLocaleString());
//            record.setCount(1);
//            recordArrayList.add(record);
//        }
//        if (!recordArrayList.isEmpty()){
//            //进行遍历集合
//            for (Record r : recordArrayList) {
//                if (diseasesPeses.getName().equals(r.getName())) {
//                    r.setCount(r.getCount() + 1);
//                    break;
//                }
//            }
//        }
//        //设置一个开关
//        boolean f=true;
//        //进行遍历集合
//        for (Record r : recordArrayList) {
//            if (r.getName().equals(diseasesPeses.getName())){
//                f=false;
//                break;
//            }
//        }
//        //对开关进行判断
//        if (f){
//            Record record = new Record();
//            record.setName(diseasesPeses.getName());
//            record.setTime(new Date().toLocaleString());
//            record.setCount(1);
//            recordArrayList.add(record);
//        }
        /**
         * 对记录的录入
         */
        Record record = new Record();
        record.setName(diseasesPeses.getName());
        record.setTime(new Date().toLocaleString());
        record.setCount(1);
        recordService.saveOrupdate(record);
        /*请求转发会导致图片丢失 所以这里用的重定向 用的session作用域*/
        return "redirect:/crops.jsp";
    }

    /**
     * 返回病虫害集合 给饼图
     * @return
     */
    @RequestMapping("/harm")
    @ResponseBody
    public List<DiseasesPests> Harm(){
        return dList;
    }

    /**
     * 返回病虫害危害的农作物占比
     * @return
     */
    @RequestMapping("/Impact")
    @ResponseBody
    public List<Impact> Impact(){
        return impactService.getImpact(id);
    }
}
