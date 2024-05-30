package com.example.API_POKEMON_CRUD.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import com.example.API_POKEMON_CRUD.FILTERS.JwtAuthenticationFilter;
import com.example.API_POKEMON_CRUD.Servicios.UserDetailsServiceImpl;
import com.example.API_POKEMON_CRUD.jasonwebtoken.JwtUtils;

@Configuration
public class SecurityConfig {
    
    @Autowired
    UserDetailsServiceImpl userDetailsServiceImpl;
    
    @Autowired
    JwtUtils jwtUtils;
    
    
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity, AuthenticationManager authenticationManager) throws Exception {
        
        JwtAuthenticationFilter jwtAuthenticationFilter = new JwtAuthenticationFilter(jwtUtils);
    
        jwtAuthenticationFilter.setAuthenticationManager(authenticationManager);
                
        return httpSecurity
                .csrf(config -> config.disable())
                .authorizeHttpRequests(auth ->{
                	auth.requestMatchers("/api/**").permitAll();
                    auth.anyRequest().fullyAuthenticated();
                })
                .formLogin(Customizer.withDefaults())
                .sessionManagement(session ->{
                    session.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
                })
                .addFilter(jwtAuthenticationFilter)
                .build();
    }
    
    /*protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsServiceImpl).passwordEncoder(passwordEncoder());
    }*/

    
    @Bean
    PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    AuthenticationManager authenticationManager(HttpSecurity httpSecurity, PasswordEncoder passwordEncoder) throws Exception {
        return httpSecurity.getSharedObject(AuthenticationManagerBuilder.class)
                .userDetailsService(userDetailsServiceImpl)
                .passwordEncoder(passwordEncoder)
                .and().build();
    }
    
}
