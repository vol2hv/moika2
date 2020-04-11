/** главный контоллер
 * войдет в продакшен
 */

 package com.example.moika2.controller;

import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @Autowired
    private UserService userService;

    @Value("${hostname}")
    private String hostname ;
    @Value("${spring.data.rest.base-path}")
    private String basePath ;

    @GetMapping("/")
    public String root(Model model) {
        model.addAttribute("baseAPI", hostname.split(":")[0] + basePath);
        return "/index";
    }

    @GetMapping("/about")
//    @PreAuthorize("hasAuthority('ADMIN')")
    public String about() {
        return "/about";
    }
}
