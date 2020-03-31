package com.example.moika2.controller;

import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
    @Autowired
    private UserService userService;

    @Value("${hostname}")
    private String hostname ;
    @Value("${spring.data.rest.base-path}")
    private String basePath ;

    @GetMapping("/whois")
    public String whois() {
        return "Это страница whois!";
    }

    // для демонстрации секьюрити.
    //    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin")
    public String admin() {
        return "/admin";
    }

    @GetMapping("/client")
    public String user() {
        return "/client";
    }

    @GetMapping("/403")
    public String error403() {
        return "/error/403";
    }

}

