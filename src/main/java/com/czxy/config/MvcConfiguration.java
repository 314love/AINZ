  package com.czxy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan(basePackages = "com.czxy")
@EnableWebMvc
public class MvcConfiguration implements WebMvcConfigurer{
//    /**
//     * 视图解析器
//     *
//     * @return
//     */
//    @Override
//    public void configureViewResolvers(ViewResolverRegistry registry) {
//        registry.jsp("/WEB-INF/jsp/", ".jsp");
//    }

    /**
     * 文件上传解析器
     *
     * @return
     */
    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        // 设置所有的上传文件的总大小 10M
        multipartResolver.setMaxInMemorySize(10 * 1024 * 1024);
        // 设置单个文件上传的大小 4M
        multipartResolver.setMaxUploadSize(4 * 1024 * 1024);
        multipartResolver.setDefaultEncoding("utf-8");
        return multipartResolver;
    }


}