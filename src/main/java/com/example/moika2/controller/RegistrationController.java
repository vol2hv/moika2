package com.example.moika2.controller;

import com.example.moika2.Moika2Application;
import com.example.moika2.domain.User;
import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;
    @Autowired
    private Moika2Application moika2App;
    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("sitekey",moika2App.getSitekey());
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(
            @RequestParam("password2") String passwordConfirm,
            @RequestParam("g-recaptcha-response") String captchaResponce,
            @Valid User user,
            BindingResult bindingResult,
            Model model
    ) {
        return userService.checkRegistrationForm(
                passwordConfirm, captchaResponce, user, bindingResult, model);
    }

    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code) {
        boolean isActivated = userService.activateUser(code);

        if (isActivated) {
            return "redirect:/dialog/message/?messageType=" + Moika2Application.ACTIVATED_SUCS;
        } else {
            return "redirect:/dialog/message/?messageType=" + Moika2Application.ACTIVATED_DANGER;
        }
    }
}
