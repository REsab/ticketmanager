package com.resab;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.resab.*"})
public class TicketmanagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(TicketmanagerApplication.class, args);
        System.out.println("app Started ");
    }
}
