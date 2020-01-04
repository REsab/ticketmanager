package com.resab.ticketmanager.zcontroller.loign;

import com.resab.ticketmanager.bean.Admin;
import com.resab.ticketmanager.service.interface1.Loginservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * @Description
 * @Date 2020/1/4 22:27
 * @Author 郑跃琳
 */
@RestController

public class Login {
    @Autowired
    Loginservice loginservice;


    @RequestMapping(value = "/admin/login")
    public boolean login(
            HttpServletRequest request,
            //对应前端的input 标签 name 属性
            @RequestParam(value = "name", defaultValue = "郑跃琳") String name,
            @RequestParam(value = "pwd", defaultValue = "124") String pwd
    ) {
        Admin admin = new Admin();
        admin.setName(name).setPwd(pwd);

        if (loginservice.find(name, pwd)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", admin);
            return true;
        }
        return false;

    }


}
