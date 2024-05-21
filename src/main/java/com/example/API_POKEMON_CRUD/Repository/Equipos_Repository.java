package com.example.API_POKEMON_CRUD.Repository;

import com.example.API_POKEMON_CRUD.entidad.EquipoPokemon;
import com.example.API_POKEMON_CRUD.entidad.pokemons;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface Equipos_Repository extends JpaRepository<EquipoPokemon,Long> {
    @Query(value = "SELECT p.id,p.user_id,p.nombre,p.pokemon1_id,p.pokemon2_id,p.pokemon3_id,p.pokemon4_id,p.pokemon5_id,p.pokemon6_id, p.activo " +
            "FROM equipo_pokemon p " +
            "where p.user_id = :id",
            nativeQuery = true)
    List<EquipoPokemon> findAllEquiposByIdUser(@Param("id") Long userid);
    @Query(value = "SELECT p.* " +
            "FROM equipo_pokemon p " +
            "where p.user_id = :id and p.activo = true",
            nativeQuery = true)
    List<EquipoPokemon> findEquipoActivo(@Param("id") Long userid);
    @Modifying
    @Query(value = "INSERT INTO equipo_pokemon (user_id, nombre ,pokemon1_id, pokemon2_id, pokemon3_id, pokemon4_id, pokemon5_id, pokemon6_id,activo) VALUES (:id,:nombre,:poke1,:poke2,:poke3,:poke4,:poke5,:poke6,:activo)",nativeQuery = true)
    @Transactional
    void guardarEquipoPokemon(@Param("id")Integer id,@Param("nombre")String nombre,@Param("poke1") Integer idPoke,@Param("poke2") Integer idPoke2,@Param("poke3") Integer idPoke3,@Param("poke4") Integer idPoke4,@Param("poke5") Integer idPoke5,@Param("poke6") Integer idPoke6,@Param("activo")boolean activo);

    @Query(value = "SELECT count(*) " +
            "FROM equipo_pokemon p " +
            "where p.user_id = :user and p.activo = true",
            nativeQuery = true)
    Integer comprobarEquiposActivos(@Param("user")Integer userId);
    @Modifying
    @Query(value = "UPDATE equipo_pokemon SET nombre = :nombre,pokemon1_id = :poke1, pokemon2_id = :poke2, pokemon3_id = :poke3, pokemon4_id = :poke4, pokemon5_id = :poke5, pokemon6_id = :poke6 WHERE user_id = :id",nativeQuery = true)
    @Transactional
    void modificarEquipoPokemon(@Param("id")Integer id,@Param("nombre")String nombre,@Param("poke1") Integer idPoke,@Param("poke2") Integer idPoke2,@Param("poke3") Integer idPoke3,@Param("poke4") Integer idPoke4,@Param("poke5") Integer idPoke5,@Param("poke6") Integer idPoke6);
}
