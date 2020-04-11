package com.example.moika2.controller;

import com.example.moika2.domain.User;
import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;

@Controller
public class TestController {
    @Autowired
    private UserService userService;

    @Value("${hostname}")
    private String hostname ;
    @Value("${spring.data.rest.base-path}")
    private String basePath ;

    // 3 способа определить текущего пользователя из spring security
    @ResponseBody
    @GetMapping("/whois")
    public String whois(Principal principal) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String result = "Зарегистрирован пользователь : " +auth.getName() + "\n";
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        result += user.toString();
        result += principal.toString();
        return  result;
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

