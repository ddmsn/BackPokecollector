package com.example.API_POKEMON_CRUD.DataSQL;

import com.example.API_POKEMON_CRUD.entidad.user_pokemon;
import com.example.API_POKEMON_CRUD.entidad.users_Roles;
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

    /**/
    @Pointcut("execution(* com.example.API_POKEMON_CRUD.Repository.UserPokemonCaughtRepository.insertPokemonCaught(..))")
    public void insertPokemonCaughtPointcut() {}
    @Pointcut("execution(* com.example.API_POKEMON_CRUD.Repository.users_Repository.save(..))")
    public void insertBaseUserPointcut() {}
    @Pointcut("execution(* com.example.API_POKEMON_CRUD.Repository.roles_Repository.save(..))")
    public void insertRolUserPointcut() {}
    @Pointcut("execution(* com.example.API_POKEMON_CRUD.Repository.Equipos_Repository.guardarEquipoPokemon(..))")
    public void insertPokeEquipoPointcut() {}

    @AfterReturning(pointcut = "insertPokemonCaughtPointcut()", returning = "result")
    public void afterInsertPokemonCaught(JoinPoint joinPoint, Object result) {
        Object[] args = joinPoint.getArgs();
        Long pokemonId = (Long) args[0];
        Long userPokemonId = (Long) args[1];

        String sql = String.format("INSERT INTO user_pokemon_caught (pokemon_id, user_pokemon_id) VALUES (%d, %d);",
                pokemonId, userPokemonId);
        try(FileWriter fileWriter = new FileWriter("./src/main/resources/SQLs/caughtPokes.sql",true)) {

            fileWriter.write(System.lineSeparator());
            fileWriter.write(sql);
            fileWriter.write(System.lineSeparator());
            fileWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @AfterReturning(pointcut = "insertBaseUserPointcut()",returning = "result")
    public void  afterInsertBaseUser(JoinPoint joinPoint,Object result){
        Object[] args = joinPoint.getArgs();
        user_pokemon user = (user_pokemon)args[0];
        String sql = String.format("INSERT INTO user_pokemon (id,nombre,contrasena,email) VALUES (%d,%s,%s,%s);",
                user.getId(),"'"+user.getNombre()+"'","'"+user.getContrasena()+"'","'"+user.getEmail()+"'");
        try(FileWriter fileWriter = new FileWriter("./src/main/resources/SQLs/usersAdded.sql",true)) {
            fileWriter.write(System.lineSeparator());
            fileWriter.write(sql);
            fileWriter.write(System.lineSeparator());
            fileWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    @AfterReturning(pointcut = "insertRolUserPointcut()",returning = "result")
    public void  afterInsertRolUser(JoinPoint joinPoint,Object result){
        Object[] args = joinPoint.getArgs();
        users_Roles userRoles = (users_Roles) args[0];
        String sql = String.format("INSERT INTO user_roles (id,nombre) VALUES (%d,%s);",
                userRoles.getId(),"'"+userRoles.getNombre()+"'");
        try(FileWriter fileWriter = new FileWriter("./src/main/resources/SQLs/usersAdded.sql",true)) {
            fileWriter.write(sql);
            fileWriter.write(System.lineSeparator());
            fileWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    @AfterReturning(pointcut = "insertPokeEquipoPointcut()",returning = "result")
    public void  afterInsertPokeEquipo(JoinPoint joinPoint,Object result){
        Object[] args = joinPoint.getArgs();
        Integer userId = (Integer) args[0];
        String nombreTeam = (String) args[1];
        Integer idPoke1 = (Integer) args[2];
        Integer idPoke2 = (Integer) args[3];
        Integer idPoke3 = (Integer) args[4];
        Integer idPoke4 = (Integer) args[5];
        Integer idPoke5 = (Integer) args[6];
        Integer idPoke6 = (Integer) args[7];
        boolean activo = (boolean) args[8];
        String sql = String.format("INSERT INTO equipo_pokemon (user_id, nombre ,pokemon1_id, pokemon2_id, pokemon3_id, pokemon4_id, pokemon5_id, pokemon6_id,activo) VALUES (%d,%s,%d,%d,%d,%d,%d,%d,%b);",
                userId,"'"+nombreTeam+"'",idPoke1,idPoke2,idPoke3,idPoke4,idPoke5,idPoke6 ,activo);
        try(FileWriter fileWriter = new FileWriter("./src/main/resources/SQLs/pokeTeamsAdded.sql",true)) {
            fileWriter.write(sql);
            fileWriter.write(System.lineSeparator());
            fileWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
