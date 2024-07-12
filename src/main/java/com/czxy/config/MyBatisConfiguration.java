package com.czxy.config;

import com.github.pagehelper.PageHelper;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import tk.mybatis.spring.mapper.MapperScannerConfigurer;

import javax.sql.DataSource;
import java.util.Properties;

public class MyBatisConfiguration {
    /**
     * 配置session工厂
     *
     * @param dataSource
     * @return
     * @throws Exception
     */
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        //1 创建 factoryBean
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        //2 设置数据
        // 2.1 数据源 
        factoryBean.setDataSource(dataSource);

        // 2.2 驼峰命名
        Configuration configuration = new Configuration();
        configuration.setMapUnderscoreToCamelCase(true);
        factoryBean.setConfiguration(configuration);

        // 2.3 分页插件
        Properties props = new Properties();
        // 设置方言
        props.setProperty("dialect", "mysql");
        // 分页的同时进行count查询
        props.setProperty("rowBoundsWithCount", "true");
        // 分页合理化参数，pageNum<=0 时会查询第一页，pageNum>pages （超过总数时），会查询最后一页
        props.setProperty("reasonable", "true");

//		PageInterceptor pageInterceptor = new PageInterceptor();
//		pageInterceptor.setProperties(props);
        PageHelper pageHelper = new PageHelper();
        pageHelper.setProperties(props);

        factoryBean.setPlugins(new Interceptor[]{pageHelper});

        //3 通过factorybean获得对应
        return factoryBean.getObject();
    }

    /**
     * 映射扫描器
     *
     * @return
     */
    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer() {
        //1 创建
        MapperScannerConfigurer mapperScanner = new MapperScannerConfigurer();
        //2设置包
        mapperScanner.setBasePackage("com.czxy.mapper");

        return mapperScanner;
    }

}
