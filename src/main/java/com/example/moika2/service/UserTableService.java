package com.example.moika2.service;

import com.example.moika2.domain.User;
import com.example.moika2.repository.UserRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class UserTableService extends TableFromRepoServiceImpl<User, Long, UserRepo> {
    UserRepo repository;

    @Autowired
    public UserTableService(UserRepo repository) {
        super(repository);
        this.repository = repository;
    }
/*
--------------------------------
методы специфичные для таблицы
--------------------------------
*/
}

