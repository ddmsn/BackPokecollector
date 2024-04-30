package com.example.API_POKEMON_CRUD.entidad;

public class AddPokemonRequest {

    private Long pokemonId;
    private Long userPokemonId;

    public AddPokemonRequest() {
    }

    public AddPokemonRequest(Long pokemonId, Long userPokemonId) {
        this.pokemonId = pokemonId;
        this.userPokemonId = userPokemonId;
    }

    public Long getPokemonId() {
        return pokemonId;
    }

    public void setPokemonId(Long pokemonId) {
        this.pokemonId = pokemonId;
    }

    public Long getUserPokemonId() {
        return userPokemonId;
    }

    public void setUserPokemonId(Long userPokemonId) {
        this.userPokemonId = userPokemonId;
    }
}
