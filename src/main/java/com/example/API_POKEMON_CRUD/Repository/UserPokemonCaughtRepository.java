package com.example.API_POKEMON_CRUD.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.API_POKEMON_CRUD.entidad.UserPokemonCaught;

import jakarta.transaction.Transactional;

public interface UserPokemonCaughtRepository extends JpaRepository<UserPokemonCaught, Long> {

	 @Modifying
	    @Transactional
	    @Query(value = "INSERT INTO user_pokemon_caught (pokemon_id, user_pokemon_id) VALUES (:pokemonId, :userPokemonId)", nativeQuery = true)
	    void insertPokemonCaught(Long pokemonId, Long userPokemonId);
	 
	 @Modifying
	 @Transactional
	 @Query(value = "DELETE FROM user_pokemon_caught WHERE pokemon_id = :pokemonId AND user_pokemon_id = :userPokemonId", nativeQuery = true)
	 void deleteByPokemonIdAndUserPokemonId(Long pokemonId, Long userPokemonId);
	 	
	boolean existsByUserPokemonIdAndPokemonId(Long userPokemonId, Long pokemonId);


	}

