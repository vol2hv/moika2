package com.example.moika2.repository;

import com.example.moika2.domain.Parententity;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@Slf4j
class ParentEntityRepoTest {
    private ParentEntityRepo repo;
    @Autowired
    public ParentEntityRepoTest(ParentEntityRepo repo) {
        this.repo = repo;
    }

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void findByName() {
        Parententity p= repo.findByName("Первый");
        log.info(p.toString());

    }
}