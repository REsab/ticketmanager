package com.resab.ticketmanager.zcontroller.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

/**
 * @Description 注册中心 注册拦截器
 * @Date 2020/1/4 21:03
 * @Author 郑跃琳
 */

@Configuration
public class ConfigMvcInterceptor extends WebMvcConfigurationSupport {

    @Autowired
    private LoginInterceptor loginInterceptor;

    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        // 多个拦截器组成一个拦截器链
        // addPathPatterns 用于添加拦截规则，/**表示拦截所有请求
        // excludePathPatterns 用户排除拦截 ，放行 不拦截

        String[] intercept = {"/**"};
        String[] unintercept = {
                //"/static/lib/**", //错误方式
                //"/static/login/**",
                "/lib/**",
                "/admin/login",
                "/login/**"
        };


        registry.addInterceptor(loginInterceptor)
                .addPathPatterns(intercept)    //拦截
                .excludePathPatterns(unintercept); //放行
        super.addInterceptors(registry);
    }


    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/static/");
        super.addResourceHandlers(registry);
    }


}
