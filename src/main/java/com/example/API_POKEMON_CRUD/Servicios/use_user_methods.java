package com.example.API_POKEMON_CRUD.Servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.example.API_POKEMON_CRUD.FTO.user_pokemon_register;
import com.example.API_POKEMON_CRUD.Repository.users_Repository;
import com.example.API_POKEMON_CRUD.entidad.ERole;
import com.example.API_POKEMON_CRUD.entidad.user_pokemon;
import com.example.API_POKEMON_CRUD.entidad.users_Roles;
import com.example.API_POKEMON_CRUD.Repository.UserPokemonCaughtRepository;
import com.example.API_POKEMON_CRUD.Repository.roles_Repository;

@Service
public class use_user_methods implements user_method{

	@Autowired
	private users_Repository repository;
	
	 @Autowired
	    private UserPokemonCaughtRepository userPokemonCaughtRepository;
	
	@Autowired
	private roles_Repository roles_Repository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public List<user_pokemon> allusers() {
		return repository.findAll();
	}

	@Override
	public List<user_pokemon> deleteuser(Long id) {
		repository.deleteById(id);
		return repository.findAll();
	}

	@Override
	 public List<String> getUsersWithCaughtPokemons() {
	        return repository.findUsersWithCaughtPokemons();
	    }


	@Override
	public List<String> userswithPokemons(String username) {
		return repository.findUsersWithCaughtPokemons(username);
	}

	@Override
    public user_pokemon guardar(user_pokemon_register user_pokemon_register) {
        user_pokemon user = new user_pokemon();
        
        user.setNombre(user_pokemon_register.getNombre());
        user.setContrasena(passwordEncoder.encode(user_pokemon_register.getContrasena()));
        user.setEmail(user_pokemon_register.getEmail());
        
        users_Roles userRole = new users_Roles();
        userRole.setNombre(ERole.USER); // Aquí puedes establecer el rol que desees, por ejemplo, ADMIN o INVITED.
  
        
        user=repository.save(user);
        
        roles_Repository.save(userRole);

        return user;
    }

	@Override
	public user_pokemon findByNombre(String nombre) {
	    Optional<user_pokemon> optionalUserPokemon = repository.findByNombre(nombre);
	    return optionalUserPokemon.orElse(null); // Retorna null si el Optional está vacío
	}
	
	 public void insertPokemonCaught(Long pokemonId, Long userPokemonId) {
	        userPokemonCaughtRepository.insertPokemonCaught(pokemonId, userPokemonId);
	    }
	 
	 public Long findUserIdByNombre(String nombre) {
	        return repository.findIdByNombre(nombre);
	    }

	@Override
	public void deleteCaughtPokemon(Long pokemonId, Long userPokemonId) {
		 userPokemonCaughtRepository.deleteByPokemonIdAndUserPokemonId(pokemonId, userPokemonId);
	}
	




}
