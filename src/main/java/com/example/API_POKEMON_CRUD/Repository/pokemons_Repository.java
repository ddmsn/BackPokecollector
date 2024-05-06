package com.example.API_POKEMON_CRUD.Repository;

import java.util.List;

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
	@Query(value = "SELECT m.* " +
			"FROM movimientos m " +
			"JOIN pokemons p ON p.movimiento1_id = m.id OR " +
			"p.movimiento2_id = m.id OR " +
			"p.movimiento3_id = m.id OR " +
			"p.movimiento4_id = m.id " +
			"WHERE p.id = :pokemonId",
			nativeQuery = true)
	List<Movimiento> findMovimientosByPokemonId(@Param("pokemonId") Long pokemonId);
}
