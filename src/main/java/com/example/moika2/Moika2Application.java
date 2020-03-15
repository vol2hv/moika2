package com.example.moika2;

import com.example.moika2.domain.Role;
import com.example.moika2.domain.User;
import com.example.moika2.repository.UserRepo;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
@Getter
public class Moika2Application {
    /*
     * Определение НСИ проекта
     * */
    public final static String PATH_TABLES_RENDERING = "/data"; // "/data/"

    public final static String REGISTRATION_SUCS = "registrationSucs";
    public final static String ACTIVATED_SUCS = "activatedSucs";
    public static final String ACTIVATED_DANGER = "activatedDanger";
    public static final String RESETPASS_DANGER = "resetpassDanger";
    public static final String RESETPASS_SUCS = "resetpassSucs";
    public static final String CAPTCHA_URL =
        "https://www.google.com/recaptcha/api/siteverify?secret=%s&response=%s";

   // параметры из application.properties
    @Value("${recaptcha.sitekey}")
    private String sitekey ;
    @Value("${recaptcha.secret}")
    private String secret;
    @Value("${adminpass}")
    private String adminpass;

//    ===================================

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;

    public static void main(String[] args) {
        SpringApplication.run(Moika2Application.class, args);
    }
    @PostConstruct
    void createUsersAndRoles() {
        User user = userRepo.findByUsername("admin");
        if (user == null) {
            Set<Role> roles = new HashSet<> ( Arrays.asList(Role.values()) );
            user = new User("admin",
                    passwordEncoder.encode(adminpass),true,
                "admin@ya.ru","", roles);
            userRepo.save(user);
        }
    }
}
