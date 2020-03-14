package com.example.moika2.service;


import com.example.moika2.domain.CarWash;
import com.example.moika2.repository.CarWashRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class CarWashTableService
        extends TableFromRepoServiceImpl<CarWash, Long, CarWashRepo> {

    CarWashRepo repository;

    @Autowired
    public CarWashTableService(CarWashRepo  repository) {
        super(repository);
        this.repository = repository;
    }
/*
--------------------------------
методы специфичные для таблицы
--------------------------------
*/
    public CarWash findByName(String name) {
        CarWash res = null;

        try {
            res = repository.findByName(name);
        } catch (Exception e) {
            log.error("Ошибка поиска записи в таблицe базе данных {}:", e);
        }
        return res;
    }

}

