package com.example.moika2.service;


import com.example.moika2.domain.Sample;
import com.example.moika2.repository.SamleRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class SampleTableService
        extends TableFromRepoServiceImpl<Sample, Long, SamleRepo> {

    SamleRepo repository;

    @Autowired
    public SampleTableService(SamleRepo  repository) {
        super(repository);
        this.repository = repository;
    }
/*
--------------------------------
методы специфичные для таблицы
--------------------------------
*/
    public Sample findByName(String name) {
        Sample res = null;

        try {
            res = repository.findByName(name);
        } catch (Exception e) {
            log.error("Ошибка поиска записи в таблицe базе данных {}:", e);
        }
        return res;
    }

}

