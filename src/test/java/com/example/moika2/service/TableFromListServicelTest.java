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
class TableFromListServicelTest {
    private TableFromRepoService<Parententity, Long> mainTableService;
    TableFromListService<Parententity, Child1, Long> childrenTableService;
    private Parententity parent1;
    private List<Child1> list = null;
    String childTableName = "Children1";

    @Autowired
    TableFromListServicelTest(ParentEntityRepo repo) {
        mainTableService = new TableFromRepoServiceImpl<>(repo);
        childrenTableService =
            new TableFromListServiceImpl(mainTableService, childTableName);
    }

//    @BeforeEach
    void setUp() {
        mainTableService.deleteAll();
        parent1 = new Parententity("Adam");
        List<Child1> child1s = parent1.getChildren1();
        child1s.add(new Child1("first", 1));
        child1s.add(new Child1("second", 2));
        child1s.add(new Child1("third", 3));
        parent1 = mainTableService.save(parent1);
    }

    @Test
    void create() {
        setUp();
        List<Child1> child1s =  parent1.getChildList(childTableName);
        assertNotNull(child1s);
        assertTrue(childrenTableService.create(child1s, new Child1("fourth",4)));
        log.debug("Список детей: {}", child1s.toString());
    }

    @Test
    void read() {
        setUp();
        List<Child1> child1s = parent1.getChildList(childTableName);
        assertNotNull(child1s);
        Child1 child1 = childrenTableService.read(child1s, child1s.get(child1s.size()-1).getId());
        assertNotNull(child1);
        assertEquals(3, child1.getField1());
        log.debug("Получена запись: {}", child1.toString());
        child1 = childrenTableService.read(child1s, 0L);
        assertNull(child1);
    }

    @Test
    void update() {
        setUp();
        Long parId = parent1.getId();
        list = parent1.getChildList(childTableName);
        Long childId = list.get((list.size()-1)).getId();
        Child1 child1 = childrenTableService.read(list, childId);
        Child1 tmp = new Child1("third", 3);
        tmp.setId(childId);
        tmp.setField1(55);
        child1 = childrenTableService.update(list, tmp);
        assertNotNull(child1);
        child1 = childrenTableService.read(list, childId);
        child1 = childrenTableService.update(list, new Child1("A",1));
        assertNull(child1);
    }

    @Test
    void delete() {
        setUp();
        List<Child1> child1s = parent1.getChildList(childTableName);
        assertNotNull(child1s);
        Child1 child1 = childrenTableService.read(child1s, child1s.get(child1s.size()-1).getId());
        assertNotNull(child1);
        child1 = childrenTableService.delete(child1s, child1.getId());
        assertNotNull(child1);

        child1 = childrenTableService.delete(child1s, 0L );
        assertNull(child1);
    }

    @Test
    void deleteAll() {
        setUp();
        List<Child1> child1s = parent1.getChildList(childTableName);
        assertNotNull(child1s);
        assertTrue(childrenTableService.deleteAll(child1s));
        assertEquals(0, child1s.size());
    }

    @Test
    void createComplex() {
        setUp();
        boolean res = childrenTableService.createComplex(parent1.getId(),
                new Child1("fourth",4));
        assertTrue(res);
        parent1 = mainTableService.findById(parent1.getId());
        List<Child1> list = parent1.getChildList(childTableName);
        assertEquals(4, list.size());
        log.debug("Список детей: {}", list.toString());
    }

    @Test
    void readComplex() {
        setUp();
        parent1 = mainTableService.findById(parent1.getId());
        list = parent1.getChildList(childTableName);
        Child1 child1 = childrenTableService.readComplex
            ( parent1.getId(), list.get((list.size()-1)).getId());
        assertNotNull(child1);
        assertEquals(3, child1.getField1());
        log.debug("Получена запись {}", child1.toString());
    }

    @Test
    void updateComplex() {
        setUp();
        Long parId = parent1.getId();
        list = parent1.getChildList(childTableName);
        Long childId = list.get((list.size()-1)).getId();
        Child1 child1 = childrenTableService.read(list, childId);
        Child1 tmp = new Child1("third", 3);
        tmp.setId(childId);
        tmp.setField1(55);
        child1 = childrenTableService.updateComplex(parId,tmp);
        assertNotNull(child1);
        child1 = childrenTableService.readComplex(parId, childId);
        assertNotNull(child1);
        log.debug("Получена измененная запись {}", child1.toString());
        assertEquals(55, child1.getField1());
        tmp.setId(0L);
        child1 = childrenTableService.updateComplex(parId,tmp);
        assertNull(child1);
    }

    @Test
    void deleteComplex() {
        setUp();
        Long parId = parent1.getId();
        list = parent1.getChildList(childTableName);
        Child1 child = list.get((list.size()-1));
        Child1 tmp = childrenTableService.deleteComplex(parId, child.getId());
        assertNotNull(tmp);
        tmp = childrenTableService.deleteComplex
                (parId, 0L);
        assertNull(tmp);
    }
    @Test
    void deleteAllComplex(){
        setUp();
        boolean res = childrenTableService.deleteAllComplex(parent1.getId());
        assertTrue(res);
        parent1 = mainTableService.findById(parent1.getId());
        List<Child1> child1s = parent1.getChildList(childTableName);
        assertEquals(0, child1s.size());
    }
}
