package com.resab.ticketmanager.zcontroller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description
 * @Date 2020/1/4 17:43
 * @Author 郑跃琳
 */

@RestController
public class hello {
    @RequestMapping("/ctrl/hello001")
    public String hello() {
        System.out.println("lsdfjslf");

        return "Hello, Spring Boot is running !" +
                " \n this msg from controller";
    }

    @RequestMapping("/login/hello001")
    public String hell333o() {
        System.out.println("lsdfjslf");

        return "Hello, Spring Boot is running !" +
                " \n this msg from controller";
    }


    @RequestMapping("/test/forwardMAV.d1o")
    public ModelAndView forwardMAV() throws Exception {

        ModelAndView mv = new ModelAndView();
        mv.addObject("type", "转发返回ModelAndView");
        //默认情况下使用转发
        //mv.setViewName("/result");

        //手动显式指定使用转发，此时springmvc.xml配置文件中的视图解析器将会失效
        mv.setViewName("forward:/login/index.html");
        return mv;

    }

    @RequestMapping("/test/forwardMAV.do2")
    public String forwardMAV2(Model model) throws Exception {

        model.addAttribute("name", "chaoying");
        return "forward:/login/index.html";


    }
    //
    //
    //    @RequestMapping("/Hi")
    //    @ResponseBody
    //    public ModelAndView sayHello() {
    //        System.out.println("lsdfjslf2387429347");
    //
    //        ModelAndView modelAndView = new ModelAndView();
    //        modelAndView.setViewName("hello");
    //        modelAndView.addObject("" +
    //                "" +
    //                "" +
    //                " ", 12345);
    //        return modelAndView;
    //    }


}
