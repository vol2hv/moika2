package com.example.moika2.service;

import com.example.moika2.domain.Child1;
import com.example.moika2.domain.Parententity;
import com.example.moika2.repository.ParentEntityRepo;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Slf4j
@SpringBootTest
@ExtendWith(SpringExtension.class)
class TableFromRepoServicelTest {
    private TableFromRepoService<Parententity, Long> tableService;
    private Parententity parent1;

    @Autowired
    TableFromRepoServicelTest(ParentEntityRepo repo) {
        tableService = new TableFromRepoServiceImpl<>(repo);
    }

    @Test
    void save() {
        tableService.deleteAll();
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        assertNotNull(parent1);
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        assertNull(parent1);
    }

    @Test
    void findById() {
        tableService.deleteAll();
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        Long id = parent1.getId();
        parent1 = tableService.findById(id);
        assertNotNull(parent1);
        parent1 = tableService.findById(0L);
        assertNull(parent1);
    }

    @Test
    void findAll() {
        tableService.deleteAll();
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        parent1 = new Parententity("Eva");
        parent1 = tableService.save(parent1);
        List<Parententity> list = tableService.findAll();
        assertEquals(list.size(), 2);
        log.debug("Записи таблицы ParentEntity: {}", list.toString());
    }

    @Test
    void deleteById() {
        tableService.deleteAll();
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        Long id = parent1.getId();
        assertTrue(tableService.deleteById(id));
        assertFalse(tableService.deleteById(id));
    }

    @Test
    void delete() {
        tableService.deleteAll();
        parent1 = new Parententity("Adam");
        parent1 = tableService.save(parent1);
        parent1 = tableService.findById(parent1.getId());

        assertTrue(tableService.delete(parent1));
        assertTrue(tableService.delete(parent1));
    }

    @Test
    void deleteAll() {
        assertTrue(tableService.deleteAll());
        assertTrue(tableService.deleteAll());
    }

    @Test
    void complex() {
        tableService.deleteAll();
        parent1 = new Parententity("Parent1");

        List<Child1> child1s = parent1.getChildren1();
        child1s.add(new Child1("first", 1));
        child1s.add(new Child1("2", 2));
        child1s.add(new Child1("3", 3));
        parent1 = tableService.save(parent1);

        parent1 = tableService.findById(parent1.getId());
        log.info("Исходная {}", parent1.toString());
        child1s = parent1.getChildren1();
        child1s.add(new Child1("4", 4));
        Child1 child1 = child1s.get(1);
        child1.setName("update");
        child1s.set(1,child1);
        child1s.remove(2);
        parent1 = tableService.save(parent1);


        parent1 = tableService.findById(parent1.getId());
        log.info("добавили, изменили и удалили запись{}", parent1.toString());

    }
}