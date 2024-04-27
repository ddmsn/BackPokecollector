package com.example.API_POKEMON_CRUD.Servicios;

import java.util.Collection;
import java.util.Collections;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.GrantedAuthority;


import com.example.API_POKEMON_CRUD.Repository.users_Repository;
import com.example.API_POKEMON_CRUD.entidad.user_pokemon;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private users_Repository repository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
    	user_pokemon usuario=repository.findByNombre(username)
    			.orElseThrow(()-> new UsernameNotFoundException("El usuario"+username+"no existe") );
    	
    	Collection<? extends GrantedAuthority> authorities=usuario.getRoles()
    			.stream()
    			.map(role -> new SimpleGrantedAuthority("ROLE_".concat(role.getNombre().name())))
    			.collect(Collectors.toSet());
    	
    	return new User(usuario.getNombre(),
    			usuario.getContrasena(),
    			true,
    			true,
    			true,
    			true, authorities);
		
    }

}
