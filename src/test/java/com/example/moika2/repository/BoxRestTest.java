package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@TestPropertySource("/application-test.properties")
@Sql(value = {"/boxes_before.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
@Slf4j
class BoxRestTest {
    @Autowired
    private TestRestTemplate restTemplate;
    @Autowired
    private BoxRepo repo;

    @BeforeEach
    void setUp() {

    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void findByName() {
//        Box box = new Box("111");
//        box = repo.save(box);
//        ResponseEntity<String> response = restTemplate.getForEntity("/api/box", String.class);
        List<Box> boxes = repo.findAll();
        log.info(boxes.toString());
    }
}