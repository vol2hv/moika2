/**
 *  Первый вариант тестирования через TestRestTemplate,
 *  который вылавливается из котла спринга
 *
 */

package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import com.example.moika2.domain.BoxStatus;
import com.example.moika2.domain.BoxType;
import lombok.extern.slf4j.Slf4j;
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

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@TestPropertySource("/application-test.properties")
@Slf4j
//@Nested
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class BoxRestTemplateTest {
    @Value("${app.properties}")
    private  String appProperties;

    @Autowired
    private BoxRepo repo;
    // bind the above RANDOM_PORT
    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate testRestTemplate;

    Box box;

    @BeforeEach
    void setUp() {
        log.debug("Используется {}", appProperties);
    }

    @Order(1)
    @Test
//    The postForObject API
    void addBox() throws MalformedURLException {
        log.debug(repo.findAll().toString());
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
        box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        box = testRestTemplate
                .withBasicAuth("admin", "slon314")
                .postForObject(url, box, Box.class);
        assertNotNull(box);
        assertEquals("b100", box.getName() );

    }

    @Order(2)
    @Test
//    The exchange API
    void addBox1() throws MalformedURLException {
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
        box = new Box("b101", "101", BoxStatus.CLOSED, BoxType.SMALL);
        HttpEntity<Box> request = new HttpEntity<>(box);
        ResponseEntity<Box> response = testRestTemplate
                .withBasicAuth("admin", "slon314")
                .exchange(url, HttpMethod.POST, request, Box.class);
        assertEquals(response.getStatusCode(), HttpStatus.CREATED);
        box = response.getBody();
        assertNotNull(box);
        assertEquals("b101", box.getName() );
    }

    @Order(3)
    @Test
//    The postForLocation API
    void addBox2() throws MalformedURLException {
        String url = new URL("http://localhost:" + port + "/api/boxes/").toString();
        box = new Box("b102", "103", BoxStatus.CLOSED, BoxType.SMALL);
        HttpEntity<Box> request = new HttpEntity<>(box);
        URI location = testRestTemplate
                .withBasicAuth("admin", "slon314")
                .postForLocation(url, request);
        assertNotNull(location);
    }

    @Order(4)
    @Test
    void findByName() throws MalformedURLException {
       String url = new URL("http://localhost:" + port + "/api/boxes/search/findByName?name=b101").toString();
        ResponseEntity<String> response = testRestTemplate
                .withBasicAuth("admin", "slon314")
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
                .withBasicAuth("admin", "slon314")
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
    }

}