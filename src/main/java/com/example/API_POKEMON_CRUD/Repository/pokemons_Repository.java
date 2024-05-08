package com.example.API_POKEMON_CRUD.Repository;

import java.util.List;

import com.example.API_POKEMON_CRUD.entidad.EquipoPokemon;
import com.example.API_POKEMON_CRUD.entidad.Movimiento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.API_POKEMON_CRUD.entidad.pokemons;

@Repository
public interface pokemons_Repository extends JpaRepository<pokemons,Long> {
	
	 @Query(value = "SELECT p.* " +
             "FROM pokemons p " +
             "JOIN user_pokemon_caught upc ON p.id = upc.pokemon_id",
     nativeQuery = true)
List<pokemons>Pokemonscaught();
	@Query("SELECT new com.example.API_POKEMON_CRUD.entidad.Movimiento(m.id, m.nombre, m.danio) " +
			"FROM Movimiento m " +
			"JOIN pokemons p ON p.movimiento1.id = m.id OR " +
			"p.movimiento2.id = m.id OR " +
			"p.movimiento3.id = m.id OR " +
			"p.movimiento4.id = m.id " +
			"WHERE p.id = :pokemonId")
	List<Movimiento> findMovimientosByPokemonId(@Param("pokemonId") Long pokemonId);


}
