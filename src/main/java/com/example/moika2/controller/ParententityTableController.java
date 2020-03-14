package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Parententity;
import com.example.moika2.service.ParententityTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(ParententityTableController.BASE_URL_TABLE_CONTROLLER )
public class ParententityTableController
    extends RepoTableController<Parententity, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/parententity";

    private ParententityTableService service;

    public ParententityTableController(ParententityTableService service) {
        super(service, Parententity.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}
