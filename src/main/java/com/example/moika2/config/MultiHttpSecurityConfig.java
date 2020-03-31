package com.example.moika2.config;

import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;

@Configuration
@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
public class MultiHttpSecurityConfig  extends WebSecurityConfigurerAdapter {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserService userService;
    // TODO: 27.03.2020 разобраться
    @Autowired
    private AccessDeniedHandler accessDeniedHandler;

    private static final String[] ANONYMOUS_URL_LIST = {"/", "/registration", "/activate/*", "/about",
            "/static/**","/css/**", "/js/**", "/images/**", "/actuator/**"};
    private static final String[] CLIENT_URL_LIST = {"/client/**"};
    private static final String[] ADMIN_URL_LIST = {"/admin/**"};

    // Настройка аутентификации
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService)
                .passwordEncoder(passwordEncoder);
    }

    // игнорируемые URL
    //    Взял от Mkonga
    //    Spring Boot configured this already.
    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
    }

//     доступ к API по Rest
    @Configuration
    @Order(1)
    public static class ApiWebSecurityConfigurationAdapter extends WebSecurityConfigurerAdapter {
        protected void configure(HttpSecurity http) throws Exception {
            http
                    .antMatcher("/api/**")
                    .authorizeRequests()
                    .anyRequest().authenticated()
                    .and()
                    .httpBasic();
        }
    }

    // URLы веб страниц
    @Configuration
    @Order(2)
    public static class FormLoginWebSecurityConfigurerAdapter extends WebSecurityConfigurerAdapter {
        @Override
        protected void configure(HttpSecurity http) throws Exception {
            http
//                    .antMatcher("/**")
                    .authorizeRequests()
                        .antMatchers(ANONYMOUS_URL_LIST).permitAll()
//                .antMatchers(adminUrlList).hasAnyRole("ADMIN")
                        .anyRequest().authenticated()
                    .and()
                        .formLogin()
                        .loginPage("/login")
                        .permitAll()
                    .and()
                        .rememberMe()
                    .and()
                        .logout()
                        .logoutSuccessUrl("/")
                        .logoutUrl("/logout")
                        .permitAll();
////                .and()
////                .exceptionHandling().accessDeniedHandler(accessDeniedHandler);;
        }
    }
}
