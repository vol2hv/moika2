package com.example.moika2.controller;

import com.example.moika2.Moika2Application;
import com.example.moika2.domain.User;
import com.example.moika2.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PasswordResetController {
    private UserService userService;

    public PasswordResetController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/resetpass")
    public String resetpass(Model model) {
        model.addAttribute("redirectURI", "/");
        return "resetpass";
    }

    @PostMapping("/reset")
    public String resetpassPost(@RequestParam String email, Model model) {
        User user = userService.findByEmail(email);
        if (user == null) {
            return "redirect:/dialog/message/?messageType=" + Moika2Application.RESETPASS_DANGER;
        } else {
            userService.resetPasswBegin(user);
            return "redirect:/dialog/message/?messageType=" + Moika2Application.RESETPASS_SUCS;
        }
    }

}
