package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.User;
import com.example.moika2.service.UserTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(UserTableController.BASE_URL_TABLE_CONTROLLER )
public class UserTableController
    extends RepoTableController<User, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/user";

    private UserTableService service;

    public UserTableController(UserTableService service) {
        super(service, User.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}
