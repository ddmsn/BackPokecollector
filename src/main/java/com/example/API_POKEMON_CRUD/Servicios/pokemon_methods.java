package com.example.API_POKEMON_CRUD.Servicios;

import java.util.List;
import java.util.Objects;

import com.example.API_POKEMON_CRUD.entidad.Movimiento;
import com.example.API_POKEMON_CRUD.entidad.pokemons;

public interface pokemon_methods {

	public List<pokemons> allpokemons();
	
	public List<pokemons> deletepokemons(Long id);
	
	public List<pokemons> pokemonscaught();
	public List<Movimiento> movimientosByPokemonId(Long id);
}
