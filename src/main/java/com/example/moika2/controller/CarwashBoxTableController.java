package com.example.moika2.controller;
/*
 * Контроллер общих операций основной таблицы Parententity
 * */

import com.example.moika2.domain.Box;
import com.example.moika2.domain.CarWash;
import com.example.moika2.service.CarWashTableService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(CarwashBoxTableController.BASE_URL_TABLE_CONTROLLER )
public class CarwashBoxTableController
    extends ListTableController<CarWash, Box, Long> {

    //базовый URL контроллеров таблицы CarwashBox
    public final static String BASE_URL_TABLE_CONTROLLER = "/data/carwash/boxes";

    private CarWashTableService service;

    public CarwashBoxTableController(CarWashTableService service) {
        super(service, Box.class, BASE_URL_TABLE_CONTROLLER);
        this.service = service;
    }
}