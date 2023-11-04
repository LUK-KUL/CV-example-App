package com.example.cvapp.config;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class Auth extends WebSecurityConfigurerAdapter {

    @Autowired
    private final CustomAccessDeniedHandler accessDeniedHandler;

    @Bean
    protected PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }




    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user").password(passwordEncoder().encode("user")).roles("USER")
                .and()
                .withUser("1").password(passwordEncoder().encode("1")).roles("ADMIN");
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/experience", "/education", "/interests", "/skills")// mają dostęp wszyscy użytkownicy z rolą USER
                .hasAnyAuthority("ROLE_USER", "ROLE_ADMIN")
                .antMatchers("/addExperience", "/editExperience/*", "/editExpSingleField/*", "/addEducation",
                        "/editEducation/*", "/editEduSingleField/*", "/addInterests", "/editInterests/*")
                .hasAnyAuthority("ROLE_ADMIN") // mają dostęp wszyscy użytkownicy z rolą ADMIN
                .antMatchers("/")
                .permitAll()
                .and()
                .csrf().disable()
                .headers().frameOptions().disable()
                .and()
                .formLogin() // wskazujemy, że teraz będziemy konfigurować formularz autoryzacji
                .loginPage("/login")
                .usernameParameter("username") // nadajemy nazwę jaka będzie jako name w inpucie loginu formularza
                .passwordParameter("password") // nadajemy nazwę jaka będzie jako name w inpucie hasłą formularza
                .loginProcessingUrl("/login")
                .failureForwardUrl("/login?error") // co sięstanie w momencie wpisania błędnych danych
                .defaultSuccessUrl("/")// co się stanie w momencie wpisania prawidłowych danych
                .and()
                .exceptionHandling()
                .accessDeniedHandler(accessDeniedHandler)
                .and()
                .logout() // mówie, że przechodzę do konfiguracji wylogowania
                .logoutSuccessUrl("/");
    }
}
