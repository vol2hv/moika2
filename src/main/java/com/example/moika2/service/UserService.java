package com.example.moika2.service;


import com.example.moika2.Moika2Application;
import com.example.moika2.controller.ControllerUtils;
import com.example.moika2.domain.Role;
import com.example.moika2.domain.User;
import com.example.moika2.domain.dto.CaptchaResponseDto;
import com.example.moika2.other.PasswordGenerator;
import com.example.moika2.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {
    // TODO: 06.02.2020 заменить на userService
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private MailSender mailSender;
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private Moika2Application moika2App;

    @Value("${hostname}")
    private String hostname;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return user;
    }

    public boolean addUser(User user) {
        User userFromDb = userRepo.findByUsername(user.getUsername());

        if (userFromDb != null) {
            return false;
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.ROLE_CLIENT));
        user.setActivationCode(UUID.randomUUID().toString());
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        userRepo.save(user);

        sendMessage(user);

        return true;
    }

    public boolean activateUser(String code) {
        User user = userRepo.findByActivationCode(code);
        if (user == null) {
            return false;
        }
        user.setActivationCode(null);
        userRepo.save(user);
        return true;
    }
    public void resetPasswBegin(User user) {
        String passw = PasswordGenerator.generateRandomPassword(10);
        user.setPassword(passwordEncoder.encode(passw));
        userRepo.save(user);
        sendPassword(user, passw);
    }

    private void sendPassword(User user, String passw) {
        String template = new StringBuffer()
                .append("Привет, %s! \n")
                .append("Пароль Вашей учетной записи на сайте %s успешно изменен.\n")
                .append("Имя пользоователя: %s, Пароль: %s\n").toString();

        String message = String.format(template, user.getUsername(), hostname,  user.getUsername(), passw);
        mailSender.send(user.getEmail(), "Новый пароль.", message);
    }

    public List<User> findAll() {
        return userRepo.findAll();
    }

    public void saveUser(User user) {
        userRepo.save(user);
    }

    public User findByUsername(String username) {
        return userRepo.findByUsername(username);
    }

    public User findByEmail(String email) {
        return userRepo.findByEmail(email);
    }
    public String checkRegistrationForm(
                String passwordConfirm,
                String captchaResponce,
                User user,
                BindingResult bindingResult,
                Model model)
        {

        model.addAttribute("sitekey",moika2App.getSitekey());
        String url =
            String.format(Moika2Application.CAPTCHA_URL, moika2App.getSecret(), captchaResponce);
        CaptchaResponseDto response = restTemplate.postForObject(url, Collections.emptyList(), CaptchaResponseDto.class);

        if (!response.isSuccess()) {
            model.addAttribute("captchaError", "Fill captcha");
        }

        boolean isConfirmEmpty = StringUtils.isEmpty(passwordConfirm);

        if (isConfirmEmpty) {
            model.addAttribute("password2Error", "Password confirmation cannot be empty");
        }

        if (user.getPassword() != null && !user.getPassword().equals(passwordConfirm)) {
            model.addAttribute("passwordError", "Passwords are different!");
        }
        String userName = user.getUsername();
        if ((!userName.isEmpty()) && (userRepo.findByUsername(userName) !=null)) {
            model.addAttribute("usernameError", "Имя пользователя занято.");
        }
        String email = user.getEmail();
        if ((!email.isEmpty()) && (userRepo.findByEmail(email) !=null)) {
            model.addAttribute("emailError", "Адрес электронной почты занят.");
        }
        Map<String, String> errors = ControllerUtils.getErrors(bindingResult);
        if (!errors.isEmpty()) {
            model.mergeAttributes(errors);
            return "registration";
        }
        else {
            addUser(user);
            return "redirect:/dialog/message/?messageType=" + Moika2Application.REGISTRATION_SUCS;
        }
    }

    private void sendMessage(User user) {
        if (!StringUtils.isEmpty(user.getEmail())) {
            String message = String.format(
                    "Hello, %s! \n" +
                            "Welcome to Po-moika. Please, visit next link: http://%s/activate/%s",
                    user.getUsername(),
                    hostname,
                    user.getActivationCode()
            );

            mailSender.send(user.getEmail(), "Activation code", message);
        }
    }
}


