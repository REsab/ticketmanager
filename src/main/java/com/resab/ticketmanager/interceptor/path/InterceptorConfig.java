//package com.resab.ticketmanager.interceptor.path;
//
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Profile;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import java.util.ArrayList;
//import java.util.List;
///**
// * @Description
// * @Date 2020/1/4 21:30
// * @Author 郑跃琳
// */
//
//@Configuration
//@Profile({"prod","test"})  //只有测试和生产环境，拦截器才启作用
//@ConfigurationProperties(prefix = "config.path")  //读取配置文件
//public class InterceptorConfig implements WebMvcConfigurer {
//
//    private List<String> normal = new ArrayList<>();
//
//    private List<String> special = new ArrayList<>();
//
//    private List<String> exclude = new ArrayList<>();
//
//    public void setExclude(List<String> exclude) {
//        this.exclude = exclude;
//    }
//
//    public void setNormal(List<String> normal) {
//        this.normal = normal;
//    }
//
//    public void setSpecial(List<String> special) {
//        this.special = special;
//    }
//
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//        //        registry.addInterceptor(authenticationInterceptor())
//        //                .addPathPatterns("/**");    // 拦截所有请求，通过判断是否有 @LoginRequired 注解 决定是否需要登录
////        registry.addInterceptor(configPathInterceptor())
////                .excludePathPatterns(exclude)   //  不拦截
////                .addPathPatterns(special); //  拦截
//
//    }
//
//
//    @Bean
//    public ConfigPathInterceptor configPathInterceptor() {
//        return new ConfigPathInterceptor();
//    }
//}