package com.resab.ticketmanager.service.interface1;

import org.springframework.stereotype.Service;

/**
 * @Description
 * @Date 2020/1/4 22:24
 * @Author 郑跃琳
 */

@Service
public interface Loginservice {


    boolean find(String name, String pwd);
}
