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
    @Query(value = "SELECT p.* " +
            "FROM equipo_pokemon p " +
            "where p.user_id = :id",
            nativeQuery = true)
    List<EquipoPokemon> findAllEquiposByIdUser(@Param("id") Long userid);
    @Modifying
    @Query(value = "INSERT INTO equipo_pokemon (user_id, nombre ,pokemon1_id, pokemon2_id, pokemon3_id, pokemon4_id, pokemon5_id, pokemon6_id) VALUES (:id,:nombre,:poke1,:poke2,:poke3,:poke4,:poke5,:poke6)",nativeQuery = true)
    @Transactional
    void guardarEquipoPokemon(@Param("id")Integer id,@Param("nombre")String nombre,@Param("poke1") Integer idPoke,@Param("poke2") Integer idPoke2,@Param("poke3") Integer idPoke3,@Param("poke4") Integer idPoke4,@Param("poke5") Integer idPoke5,@Param("poke6") Integer idPoke6);
}
