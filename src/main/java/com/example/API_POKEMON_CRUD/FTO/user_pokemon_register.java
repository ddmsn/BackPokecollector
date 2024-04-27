package com.example.API_POKEMON_CRUD.FTO;

import java.util.Set;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class user_pokemon_register {

	public user_pokemon_register(String nombre, String contrasena, String email, Set<String> roles) {
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
		this.roles = roles;
	}

	public user_pokemon_register(String email) {
		super();
		this.email = email;
	}

	public user_pokemon_register(String nombre, String contrasena, String email) {
		super();
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
	}

	public user_pokemon_register(Long id, String nombre, String contrasena, String email) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
	}

	public user_pokemon_register() {

	}

	private Long id;

	@NotBlank
	private String nombre;

	@NotBlank
	private String contrasena;

	@Email
	@NotBlank
	private String email;
	
	private Set<String> roles;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<String> getRoles() {
		return roles;
	}

	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}

}
