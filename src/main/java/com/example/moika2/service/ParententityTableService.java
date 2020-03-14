package com.example.moika2.service;


import com.example.moika2.domain.Parententity;
import com.example.moika2.repository.ParentEntityRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ParententityTableService
        extends TableFromRepoServiceImpl<Parententity, Long, ParentEntityRepo> {

    ParentEntityRepo repository;

    @Autowired
    public ParententityTableService(ParentEntityRepo  repository) {
        super(repository);
        this.repository = repository;
    }
/*
--------------------------------
методы специфичные для таблицы
--------------------------------
*/
    public Parententity findByName(String name) {
        Parententity res = null;

        try {
            res = repository.findByName(name);
        } catch (Exception e) {
            log.error("Ошибка поиска записи в таблицe базе данных {}:", e);
        }
        return res;
    }

}

