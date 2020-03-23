/**
 * Остальные тесты от Андрея переносить не стал.
 * Не царское дело в хтмл ковыряться
 */
package com.example.moika2.controller;

import com.example.moika2.controller.BoxTableController;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.security.test.web.servlet.response.SecurityMockMvcResultMatchers.authenticated;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.xpath;

@Slf4j
@ExtendWith(SpringExtension.class)
@SpringBootTest
@AutoConfigureMockMvc
@TestPropertySource("/application-test.properties")
@Sql(value = {"/boxes_before.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
@WithUserDetails(value = "admin")
public class boxControllerTest {
    @Autowired
    private BoxTableController controller;

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void checkAuthentication() throws Exception {
        this.mockMvc.perform(get("/data/box/list/"))
                .andDo(print())
                .andExpect(authenticated())
                .andExpect(content().string(containsString("admin")));
//        .andExpect(xpath("//*[@id='navbarSupportedContent']/div").string("dru"));
    }

    @Test
    public void boxListTest() throws Exception {
        this.mockMvc.perform(get("/data/box/list/"))
                .andDo(print())
                .andExpect(authenticated())
                .andExpect(content().string(containsString("третий")));
    }
}
