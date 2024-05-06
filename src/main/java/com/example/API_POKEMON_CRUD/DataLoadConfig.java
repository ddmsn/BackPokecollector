package com.example.API_POKEMON_CRUD;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.ScriptUtils;

import javax.sql.DataSource;
import java.sql.Connection;

@Configuration
public class DataLoadConfig {

    @Bean
    public CommandLineRunner dataLoader(DataSource dataSource) {
        return args -> {
            System.out.println("Cargando datos desde data.sql...");
            // Cargar el archivo data.sql después de que las tablas estén creadas
            try (Connection connection = dataSource.getConnection()) {
                ScriptUtils.executeSqlScript(connection, new ClassPathResource("data.sql"));
                System.out.println("Datos cargados exitosamente.");
            } catch (Exception e) {
                System.err.println("Error al cargar datos desde data.sql: " + e.getMessage());
            }
        };
    }
}
