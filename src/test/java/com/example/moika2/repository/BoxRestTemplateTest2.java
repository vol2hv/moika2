/**
 *  Второй вариант тестирования через TestRestTemplate,
 *  который создается в тесте, что позволяет указать
 *  логин и пароль в конструкторе
 */

package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import com.example.moika2.domain.BoxStatus;
import com.example.moika2.domain.BoxType;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.exception.ConstraintViolationException;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.TestPropertySource;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@TestPropertySource("/application-test.properties")
@Slf4j
//@Nested
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class BoxRestTemplateTest2 {
    @Value("${app.properties}")
    private  String appProperties;

    @Autowired
    private BoxRepo repo;
    // bind the above RANDOM_PORT
    @LocalServerPort
    private int port;

    private TestRestTemplate testRestTemplate = new TestRestTemplate("admin", "slon314");

    Box box;

    @BeforeEach
    void setUp() {
        log.debug("Используется {}", appProperties);
    }

    @Order(1)
    @Test
//    The postForObject API
    void addBox() throws MalformedURLException {

        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
        box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        box = testRestTemplate
                .postForObject(url, box, Box.class);
        assertNotNull(box);
        assertEquals("b100", box.getName() );

    }

    @Order(2)
    @Test
//    The exchange API
    void addBox1() throws MalformedURLException {
        box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        box = repo.save(box);
        box.setId(null);
        log.debug(repo.findAll().toString());
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
//        box = new Box("b101", "101", BoxStatus.CLOSED, BoxType.SMALL);
        HttpEntity<Box> request = new HttpEntity<>(box);
        ResponseEntity<Box> response;
        assertThrows(ConstraintViolationException.class,() -> testRestTemplate
                .exchange(url, HttpMethod.POST, request, Box.class));
//        response = testRestTemplate
//                .exchange(url, HttpMethod.POST, request, Box.class);
/*        assertEquals(response.getStatusCode(), HttpStatus.CREATED);
        box = response.getBody();
        assertNotNull(box);
        assertEquals("b101", box.getName() );*/
    }

    @Order(3)
    @Test
//    The postForLocation API
    void addBox2() throws MalformedURLException {
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
        box = new Box("b102", "103", BoxStatus.CLOSED, BoxType.SMALL);
        HttpEntity<Box> request = new HttpEntity<>(box);
        URI location = testRestTemplate
                .postForLocation(url, request);
        assertNotNull(location);
    }

    @Order(4)
    @Test
    void findByName() throws MalformedURLException {
       String url = new URL("http://localhost:" + port + "/api/boxes/search/findByName?name=b101").toString();
        ResponseEntity<String> response = testRestTemplate
                .getForEntity(url, String.class);
        assertEquals(response.getStatusCode(), HttpStatus.OK);
        assertTrue(response.getBody().contains("101"));
    }

    @Order(5)
    @Test
    void update() throws MalformedURLException {
        box = repo.findByName("b102");
        assertNotNull(box);

        box.setDescription("update");
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString() + box.getId();
        HttpEntity<Box> request = new HttpEntity<>(box);
        ResponseEntity<Box> response = testRestTemplate
                .exchange(url, HttpMethod.PUT, request, Box.class);
        assertEquals(response.getStatusCode(), HttpStatus.OK);
        box = response.getBody();
        assertEquals("b102", box.getName() );
    }
    @Order(6)
    @Test
    void delete() throws MalformedURLException {
        box = repo.findByName("b102");
        assertNotNull(box);

        box.setDescription("update");
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString() + box.getId();
        testRestTemplate.delete(url);
        List<Box> boxes = repo.findAll();
        assertEquals(2, boxes.size());
        assertNull(repo.findByName("b102"));
        repo.findAll().forEach(box1 -> {
            log.debug(box1.toString());
        });
    }

}