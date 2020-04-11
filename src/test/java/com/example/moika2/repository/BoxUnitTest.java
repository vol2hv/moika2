package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.jdbc.Sql;

import static org.junit.jupiter.api.Assertions.assertEquals;
@SpringBootTest()
@TestPropertySource("/application-test.properties")
@Sql(value = {"/boxes_before.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
//@Slf4j
class BoxUnitTest {
    @Autowired
    private BoxRepo repo;
    @Test
    void findByName() {
        Box box = repo.findByName("b2");
        assertEquals(box.getDescription(), "второйй");
    }
}