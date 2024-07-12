package com.czxy.baidu.ai.api;

import com.czxy.baidu.ai.aip.auth.ToKen;
import com.czxy.utils.Base64Util;
import com.czxy.utils.HttpUtil;

import java.net.URLEncoder;

/**
* 植物识别
*/
public class Plant {

    /**
    * 重要提示代码中所需工具类
    * FileUtil,Base64Util,HttpUtil,GsonUtils请从
    * https://ai.baidu.com/file/658A35ABAB2D404FBF903F64D47C1F72
    * https://ai.baidu.com/file/C8D81F3301E24D2892968F09AE1AD6E2
    * https://ai.baidu.com/file/544D677F5D4E4F17B4122FBD60DB82B3
    * https://ai.baidu.com/file/470B3ACCA3FE43788B5A963BF0B625F3
    * 下载
    */
    public static String plant(byte[] bytes) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/image-classify/v1/plant";
        try {
            String imgStr = Base64Util.encode(bytes);
            String encode = URLEncoder.encode(imgStr, "UTF-8");

            String param = "baike_num=1&image=" + encode;

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = ToKen.getAuth();

            String result = HttpUtil.post(url, accessToken, param);
            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}