package com.example.datacollection;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*") // Erlaubt Anfragen von allen Ursprüngen
                .allowedMethods("GET", "POST", "PUT", "DELETE") // Erlaubte HTTP-Methoden
                .allowedHeaders("*"); // Erlaubte Header
    }
}
