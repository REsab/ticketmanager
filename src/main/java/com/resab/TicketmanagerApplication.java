package com.resab;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@Slf4j
@SpringBootApplication
@ComponentScan(basePackages = {"com.resab.*"})
public class TicketmanagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(TicketmanagerApplication.class, args);
        log.info("slf4j  app Started ");

    }
}
