package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.CarWash;
import com.example.moika2.service.CarWashTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(CarWashTableController.BASE_URL_TABLE_CONTROLLER )
public class CarWashTableController
    extends RepoTableController<CarWash, Long> {

    //базовый URL контроллеров таблицы Parententity
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/carwash";

    private CarWashTableService service;

    public CarWashTableController(CarWashTableService service) {
        super(service, CarWash.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}
