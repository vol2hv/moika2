package com.example.moika2.controller;
/*
 * Контроллер обеспечения диалога с пользователями
 *
 * */

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@RequestMapping("/dialog")
public class DialogController {

    // Вывод страницы с сообщением пользователю
    @GetMapping("/message")
    public String giveOutMessage(@RequestParam  String messageType,
            @RequestParam(defaultValue = "/") String redirectURI , Model model) {

        model.addAttribute("redirectURI", redirectURI);

        return "/dialog/message/" + messageType;
    }


}
