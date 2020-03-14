package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Child1;
import com.example.moika2.domain.Parententity;
import com.example.moika2.service.ParententityTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(ParententityChildren1TableController.BASE_URL_TABLE_CONTROLLER )
public class ParententityChildren1TableController
    extends ListTableController<Parententity, Child1, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/parententity/children1";

    private ParententityTableService service;

    public ParententityChildren1TableController(ParententityTableService service) {
        super(service, Child1.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}