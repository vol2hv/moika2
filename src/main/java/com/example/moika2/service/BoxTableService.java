package com.example.moika2.service;


import com.example.moika2.domain.Box;
import com.example.moika2.repository.BoxRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class BoxTableService extends TableFromRepoServiceImpl<Box, Long, BoxRepo> {

    BoxRepo repository;

    @Autowired
    public BoxTableService(BoxRepo  repository) {
        super(repository);
        this.repository = repository;
    }
/*
--------------------------------
методы специфичные для таблицы
--------------------------------
*/
    public Box findByName(String name) {
        Box res = null;

        try {
            res = repository.findByName(name);
        } catch (Exception e) {
            log.error("Ошибка поиска записи в таблицe базе данных {}:", e);
        }
        return res;
    }

}

