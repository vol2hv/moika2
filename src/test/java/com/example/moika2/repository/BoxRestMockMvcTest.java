package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import com.example.moika2.domain.BoxStatus;
import com.example.moika2.domain.BoxType;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static com.example.moika2.JsonString.asJsonString;
import static org.hamcrest.Matchers.containsString;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

//@RunWith(SpringRunner.class)
@WithMockUser("admin")
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@ExtendWith(SpringExtension.class)
@SpringBootTest
@AutoConfigureMockMvc
@TestPropertySource("/application-test.properties")
@Slf4j
public class BoxRestMockMvcTest {
    @Autowired
    private MockMvc mockMvc;
    @Autowired
    private BoxRepo boxRepo;

    @Test
    void addBox() throws Exception {
        boxRepo.deleteAll();
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        String url = "/api/boxes/";
        mockMvc.perform(MockMvcRequestBuilders
                .post("/api/boxes/")
                .content(asJsonString(box))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated())
                .andExpect(content().string(containsString("100")));
    }

    @Test
    void addBoxDouble() throws Exception {
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.deleteAll();
        boxRepo.save(box);
        box.setId(null);
        String url = "/api/boxes/";
        log.info(boxRepo.findAll().toString());
        mockMvc.perform(MockMvcRequestBuilders
                .post("/api/boxes/")
                .content(asJsonString(box))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isConflict());
    }
    @Test
    void addBoxUpdate() throws Exception {
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.deleteAll();
        boxRepo.save(box);
        assertEquals(5, 5+2);
        String url = "/api/boxes/"+box.getId().toString();
        box.setDescription("hundredthСотый");
        log.info(boxRepo.findAll().toString());
        mockMvc.perform(MockMvcRequestBuilders
                .put(url)
                .content(asJsonString(box))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("hundredthСотый")));
    }

    @Test
// ID в URI не нужен вообще
    void boxUpdateUriError() throws Exception {
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.deleteAll();
        boxRepo.save(box);
        String url = "/api/boxes/";
        box.setDescription("hundredthСотый");
        box.setId(1234567890l);
        mockMvc.perform(MockMvcRequestBuilders
                .put(url)
                .content(asJsonString(box))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
        log.debug("Boxes: {}", boxRepo.findAll());
    }

    @Test
    void boxFindById() throws Exception {
        boxRepo.deleteAll();
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.save(box);
        box = new Box("b101", "101", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.save(box);
        mockMvc.perform(get("/api/boxes/" + box.getId().toString()))
                .andDo(print())
                .andExpect(status().isOk());
        log.debug("Boxes: {}", boxRepo.findAll());
    }
    @Test
    void boxFindByIdNotFound() throws Exception {
        boxRepo.deleteAll();
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.save(box);
        mockMvc.perform(get("/api/boxes/0"))
                .andDo(print())
                .andExpect(status().isNotFound());
        log.debug("Boxes: {}", boxRepo.findAll());
    }
    @Test
    void boxDelete() throws Exception {
        boxRepo.deleteAll();
        Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
        boxRepo.save(box);
        mockMvc.perform(MockMvcRequestBuilders
                .delete("/api/boxes/" + box.getId().toString())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNoContent());
        boxRepo.findAll().forEach(box1 -> {
            log.debug(box1.toString());
        });
    }
    @Test
    void boxDeleteNotFound() throws Exception {
        boxRepo.deleteAll();
        mockMvc.perform(MockMvcRequestBuilders
                .delete("/api/boxes/0")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
        boxRepo.findAll().forEach(box1 -> {
            log.debug(box1.toString());
        });
    }

    @Test
    void boxFindByName() throws Exception {
    boxRepo.deleteAll();
    Box box = new Box("b100", "100", BoxStatus.CLOSED, BoxType.SMALL);
    boxRepo.save(box);
    box = new Box("b101", "101", BoxStatus.CLOSED, BoxType.SMALL);
    boxRepo.save(box);

    mockMvc.perform(get("/api/boxes/search/findByName?name=b100"))
            .andDo(print())
            .andExpect(status().isOk())
            .andExpect(content().string(containsString("100")));
        boxRepo.findAll().forEach(box1 -> {
            log.debug(box1.toString());
        });
}
}
