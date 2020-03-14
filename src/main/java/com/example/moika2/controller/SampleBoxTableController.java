package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Box;
import com.example.moika2.domain.Sample;
import com.example.moika2.service.SampleTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(SampleBoxTableController.BASE_URL_TABLE_CONTROLLER )
public class SampleBoxTableController
    extends ListTableController<Sample, Box, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/sample/boxes";

    private SampleTableService service;

    public SampleBoxTableController(SampleTableService service) {
        super(service, Box.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}