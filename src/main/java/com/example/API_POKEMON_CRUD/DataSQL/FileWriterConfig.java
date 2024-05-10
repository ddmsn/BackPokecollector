package com.example.API_POKEMON_CRUD.DataSQL;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import java.io.FileWriter;
import java.io.IOException;

@Configuration
public class FileWriterConfig {

    @Bean
    public FileWriter fileWriter() throws IOException {
        return new FileWriter("data.sql", true);
    }
}
