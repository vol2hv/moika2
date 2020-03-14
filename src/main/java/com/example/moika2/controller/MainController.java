package com.example.moika2.controller;
/*
* главный контоллер
* войдет в продакшен
* */

import com.example.moika2.Moika2Application;
import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String root() {
        return "/index";
    }

    // для демонстрации секьюрити.
    @GetMapping("/admin")
    public String admin() {
        return "/admin";
    }

    @GetMapping("/client")
    public String user() {
        return "/client";
    }

    @GetMapping("/about")
//    @PreAuthorize("hasAuthority('ADMIN')")
    public String about() {
        return "/about";
    }
    // отображение таблиц системы
    @GetMapping(Moika2Application.PATH_TABLES_RENDERING)
    public String table(Model model) {
        model.addAttribute("base", Moika2Application.PATH_TABLES_RENDERING);
        return "/table";
    }
    @GetMapping("/403")
    public String error403() {
        return "/error/403";
    }

}
