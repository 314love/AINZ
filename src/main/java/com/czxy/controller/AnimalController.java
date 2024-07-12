package com.czxy.controller;

import com.czxy.domain.Animal_Result;
import com.czxy.service.AnimalService;
import com.czxy.service.impl.AnimalServiceImpl;
import com.czxy.utils.Base64Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/animal")
public class AnimalController {

    @Resource
    private AnimalService animalService;

    @RequestMapping("/getanimal")
    public String getAnimal(@RequestParam(value = "picFile")MultipartFile picFile, HttpServletRequest request) throws IOException {
        byte[] bytes = picFile.getBytes();

        List<Animal_Result> alist = new ArrayList<>();

        try {
            alist = animalService.getAnimalList(bytes);
        }catch (Exception e){
            return "redirect:/error/error.jsp";
        }

        Animal_Result animalResult = animalService.getAnimalResult(alist);

        List<String> nlist = animalService.getName(alist);

        String[] nStr = new String[6];

        nStr[0] = nlist.get(0);
        nStr[1] = nlist.get(1);
        nStr[2] = nlist.get(2);
        nStr[3] = nlist.get(3);
        nStr[4] = nlist.get(4);
        nStr[5] = nlist.get(5);

        List<Double> slist = animalService.getScore(alist);

        String encode = Base64Util.encode(bytes);

        HttpSession session = request.getSession();

        session.setAttribute("encode",encode);

        session.setAttribute("Animal",animalResult);

        session.setAttribute("nStr",nStr);

        session.setAttribute("slist",slist);

        return "redirect:/about2_crops.jsp";
    }
}
