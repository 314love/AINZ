package com.czxy.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class WebInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        //1 配置spring工厂
        AnnotationConfigWebApplicationContext application = new AnnotationConfigWebApplicationContext();
        // 注册所有的配置类
        application.register(MyBatisConfiguration.class);
        application.register(SpringConfiguration.class);
        application.register(MvcConfiguration.class);

        //2 post中文乱码
        FilterRegistration.Dynamic encodingFilter = servletContext.addFilter("encoding", new CharacterEncodingFilter("UTF-8"));
        encodingFilter.addMappingForUrlPatterns(null, true, "/*");

        //3 核心控制器
        ServletRegistration.Dynamic mvcServlet = servletContext.addServlet("springmvc", new DispatcherServlet(application));
        //mvcServlet.addMapping("*.action");
        mvcServlet.addMapping("/");
        mvcServlet.setLoadOnStartup(2);    //tomcat启动时，执行servlet的初始化方法

    }

}