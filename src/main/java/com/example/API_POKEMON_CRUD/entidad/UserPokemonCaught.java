package com.example.API_POKEMON_CRUD.entidad;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_pokemon_caught")
public class UserPokemonCaught {

    public UserPokemonCaught() {
		super();
	}

	public UserPokemonCaught(Long id, user_pokemon userPokemon, pokemons pokemon) {
		super();
		this.id = id;
		this.userPokemon = userPokemon;
		this.pokemon = pokemon;
	}

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	 @ManyToOne
	    @JoinColumn(name = "user_pokemon_id")
	    private user_pokemon userPokemon;

	    @ManyToOne
	    @JoinColumn(name = "pokemon_id")
	    private pokemons pokemon;
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public user_pokemon getUserPokemon() {
		return userPokemon;
	}

	public void setUserPokemon(user_pokemon userPokemon) {
		this.userPokemon = userPokemon;
	}

	public pokemons getPokemon() {
		return pokemon;
	}

	public void setPokemon(pokemons pokemon) {
		this.pokemon = pokemon;
	}

}
