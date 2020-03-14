package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Box;
import com.example.moika2.service.BoxTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(BoxTableController.BASE_URL_TABLE_CONTROLLER )
public class BoxTableController
    extends RepoTableController<Box, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/box";

    private BoxTableService service;

    public BoxTableController(BoxTableService service) {
        super(service, Box.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}
