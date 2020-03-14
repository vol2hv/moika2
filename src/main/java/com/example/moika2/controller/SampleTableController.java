package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Sample;
import com.example.moika2.service.SampleTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(SampleTableController.BASE_URL_TABLE_CONTROLLER )
public class SampleTableController
    extends RepoTableController<Sample, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/sample";

    private SampleTableService service;

    public SampleTableController(SampleTableService service) {
        super(service, Sample.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}
