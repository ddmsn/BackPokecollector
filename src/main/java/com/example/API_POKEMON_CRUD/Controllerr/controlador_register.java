package com.example.API_POKEMON_CRUD.Controllerr;

import java.util.Set;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.API_POKEMON_CRUD.FTO.user_pokemon_register;
import com.example.API_POKEMON_CRUD.Servicios.user_method;
import com.example.API_POKEMON_CRUD.entidad.ERole;
import com.example.API_POKEMON_CRUD.entidad.users_Roles;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/register")
public class controlador_register {
	
	@Autowired
	private user_method servicio_user;

	@ModelAttribute("user")
	public user_pokemon_register returnNewUserRegister() {
		
		return new user_pokemon_register();
	}
	
	@GetMapping
	public String showformregister() {
		
		return "register";
	}
	
	@PostMapping
	public String registeruseraccount(@Valid @ModelAttribute("user")user_pokemon_register registeruser) {
		
		servicio_user.guardar(registeruser);
		
		return "redirect:/register?exito";
	}

}
