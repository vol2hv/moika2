/*
package com.example.moika2.config;

import com.example.moika2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.access.AccessDeniedHandler;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class MultiHttpSecurityConfig  extends WebSecurityConfigurerAdapter {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserService userService;
    // TODO: 27.03.2020 разобраться
    @Autowired
    private AccessDeniedHandler accessDeniedHandler;

    private static String[] anonymousUrlList = {"/", "/registration", "/activate/*", "/about",
            "/static/**","/css/**", "/js/**", "/images/**"};
    private static String[] clientUrlList = {"/client/**"};
    private static String[] adminUrlList = {"/admin/**"};
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
// доступ к API по Rest Hal
//    @Bean
//    public UserDetailsService userDetailsService() throws Exception {
//        // ensure the passwords are encoded properly
//        User.UserBuilder users = User.withDefaultPasswordEncoder();
//        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
//        manager.createUser(users.username("user").password("111").roles("USER").build());
//        manager.createUser(users.username("admin").password("111").roles("USER","ADMIN").build());
//        return manager;
//    }
//    @Configuration
//    @Order(1)
//    public static class ApiWebSecurityConfigurationAdapter extends WebSecurityConfigurerAdapter {
//        protected void configure(HttpSecurity http) throws Exception {
//            http
//                    .antMatcher("/api/**")
//                    .authorizeRequests()
//                    .anyRequest().authenticated()
//                    .and()
//                    .httpBasic()
//                    .and()
//                    .csrf().disable()
//                    .formLogin().disable();
//        }
//    }
// URLы веб страний
    @Configuration
    @Order(1)
    public static class PermitAllWebSecurityConfigurerAdapter extends WebSecurityConfigurerAdapter {
        String string = String.valueOf(anonymousUrlList);
        @Override
        protected void configure(HttpSecurity http) throws Exception {
            http
                    .antMatcher("/**")
                        .authorizeRequests()
                        .anyRequest().permitAll();
//                            .antMatchers(anonymousUrlList).permitAll()
//                            .anyRequest().authenticated()
//                    .and()
//                    .   formLogin()
//                    .   loginPage("/login")
//                    .permitAll()
//                    .and()
//                    .rememberMe()
//                    .and()
//                    .logout()
//                    .logoutSuccessUrl("/")
//                    .logoutUrl("/logout")
//                    .permitAll();
//                .and()
//                .exceptionHandling().accessDeniedHandler(accessDeniedHandler);
        }
    }

}
*/
