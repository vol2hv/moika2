//package com.example.moika2.service;
//
//import com.example.moika2.domain.Box;
//import com.example.moika2.domain.BoxStatus;
//import com.example.moika2.domain.BoxType;
//import com.example.moika2.domain.Sample;
//import lombok.extern.slf4j.Slf4j;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.annotation.Commit;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.math.BigDecimal;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.time.*;
//import java.util.ArrayList;
//import java.util.List;
//
//@Slf4j
//@SpringBootTest
//public class SampleServiceTest {
//    @Autowired
//    private SampleService service;
//
//    @BeforeEach
//    public void setUp() throws Exception {
//    }
//    @Test
//    public void dateTime() {
//        LocalDate localDate = LocalDate.parse("2017-11-15");
//        log.info(localDate.toString());
//
//        LocalTime localTime = LocalTime.parse("15:30:18");
//        log.info(localTime.toString());
//
//        OffsetTime offsetTime = OffsetTime.parse("08:22:12+01:00");
//        log.info(offsetTime.toString());
//
//        Instant instant = (Instant.parse("2017-11-15T08:22:12Z"));
//        log.info(instant.toString());
//
//        LocalDateTime localDateTime = LocalDateTime.parse("2017-11-15T08:22:12");
//        log.info(localDateTime.toString());
//
//        OffsetDateTime offsetDateTime = OffsetDateTime.parse("2017-11-15T08:22:12+03:00");
//        log.info(offsetDateTime.toString());
//
//        ZonedDateTime zonedDateTime = ZonedDateTime.parse("2017-11-15T08:22:12+03:00[Europe/Minsk]");
//        log.info(zonedDateTime.toString());
//        log.info(ZoneId.systemDefault().toString());
//    }
//    @Test
//    @Transactional
//    @Commit
//    public void AllTest() throws ParseException {
//        // 1 родитльская запись
//        Sample sample = new Sample("sample1","deskription1",
//                new SimpleDateFormat("yyyy-MM-dd").parse("2018-10-16"),
//                new SimpleDateFormat("HH:mm:ss").parse("15:30:14"),
//                new BigDecimal("12345.99"), true,"Пароль", BoxStatus.BREAK, new ArrayList<>());
//        sample.getBoxes().add(new Box(null, "box1","1 бокс 1 мойки", BoxStatus.FREE, BoxType.BIG));
//        Long id1 = service.save(sample).getId();
//        //2 родительская запись
//        sample = new Sample("Мойка2", "Описание2");
//        service.save(sample);
//        log.info(sample.toString());
//        // чтение 1 родительской записи и добабление 2 боксов
//        sample = service.findById(id1).get();
//        sample.getBoxes().add(new Box("box2"));
//        service.save(sample);
//        sample.getBoxes().add(new Box("box3"));
//        service.save(sample);
//        log.info(sample.toString());
//        // изменение родиельской записи
//        sample = service.findById(id1).get();
//        List<Box> boxes = sample.getBoxes();
//        Box box = boxes.stream().filter(box1 -> box1.getName() == "box1").findFirst().get();
//        box.setDescription("Измененное описание");
//        boxes.remove(boxes.indexOf(box));
//        boxes.add(box);
//        service.save(sample);
//        log.info(sample.toString());
//        service.deleteAll();
//    }
//}