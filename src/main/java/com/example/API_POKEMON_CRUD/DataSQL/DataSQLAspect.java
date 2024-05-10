package com.example.API_POKEMON_CRUD.DataSQL;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.io.FileWriter;
import java.io.IOException;

@Aspect
@Component
public class DataSQLAspect {

    private final FileWriter fileWriter;

    @Autowired
    public DataSQLAspect(FileWriter fileWriter) {
        this.fileWriter = fileWriter;
    }

    @Pointcut("execution(* com.example.API_POKEMON_CRUD.Repository.UserPokemonCaughtRepository.insertPokemonCaught(..))")
    public void insertPokemonCaughtPointcut() {}

    @AfterReturning(pointcut = "insertPokemonCaughtPointcut()", returning = "result")
    public void afterInsertPokemonCaught(JoinPoint joinPoint, Object result) {
        Object[] args = joinPoint.getArgs();
        Long pokemonId = (Long) args[0];
        Long userPokemonId = (Long) args[1];

        String sql = String.format("INSERT INTO user_pokemon_caught (pokemon_id, user_pokemon_id) VALUES (%d, %d);",
                pokemonId, userPokemonId);
        try {
            fileWriter.write(sql);
            fileWriter.write(System.lineSeparator());
            fileWriter.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
