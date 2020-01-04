package com.resab.ticketmanager.service;

import com.resab.ticketmanager.service.interface1.Loginservice;
import org.springframework.stereotype.Service;

/**
 * @Description
 * @Date 2020/1/4 22:24
 * @Author 郑跃琳
 */

@Service
public class LoginserviceImpl implements Loginservice {


    @Override
    public boolean find(String name, String pwd) {
        if (name.equals("admin")) {
            if (pwd.equals("admin")) {
                return true;
            }
        }
        return false;
    }
}
