//package com.resab.ticketmanager.interceptor.path;
//
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * @Description
// * @Date 2020/1/4 21:30
// * @Author 郑跃琳
// */
//
//@Component
//public class ConfigPathInterceptor implements HandlerInterceptor {
//
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        System.out.println("执行了拦截器");
//        if(request.getMethod().equalsIgnoreCase("GET")){
//            return true;
//        }
//        return false;
//    }
//}