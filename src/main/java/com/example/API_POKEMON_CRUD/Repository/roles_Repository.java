package com.example.API_POKEMON_CRUD.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.API_POKEMON_CRUD.entidad.user_pokemon;
import com.example.API_POKEMON_CRUD.entidad.users_Roles;

public interface roles_Repository extends JpaRepository<users_Roles,Long> {

}
