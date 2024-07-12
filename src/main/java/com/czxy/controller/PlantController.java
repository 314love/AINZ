package com.czxy.controller;

import com.czxy.baidu.ai.api.Plant;
import com.czxy.domain.Plant_Result;
import com.czxy.service.PlantService;
import com.czxy.utils.Base64Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author 
 * @Date 2022/1/27
 */
@Controller
@RequestMapping("/Plant")
public class PlantController {

    @Resource
    private PlantService plantService;

    @RequestMapping("/getPlant")
    public String getPlant(@RequestParam(value = "picFile")MultipartFile picFile, HttpServletRequest request) throws IOException {
        byte[] bytes = picFile.getBytes();

        List<Plant_Result> plist = new ArrayList<>();

        try {
            plist = plantService.getPlantList(bytes);
            Plant_Result plant = plantService.getPlant(plist);

            List<String> nlist = plantService.getName(plist);

            String[] nStr = new String[3];
            nStr[0] = nlist.get(0);
            nStr[1] = nlist.get(1);
            nStr[2] = nlist.get(2);

            List<Double> slist = plantService.getScore(plist);

            String imgStr = Base64Util.encode(bytes);

            HttpSession session = request.getSession();

            session.setAttribute("imgStr",imgStr);

            session.setAttribute("plant",plant);

            session.setAttribute("nStr",nStr);

            session.setAttribute("nlist",nlist);

            session.setAttribute("slist",slist);

            return "redirect:/about3_crops.jsp";
        }catch (Exception e){
            return "redirect:/error/error.jsp";
        }
    }
}
