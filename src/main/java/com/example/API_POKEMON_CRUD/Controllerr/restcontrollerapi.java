package com.example.API_POKEMON_CRUD.Controllerr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import com.example.API_POKEMON_CRUD.entidad.user_pokemon;
import com.example.API_POKEMON_CRUD.jasonwebtoken.JwtUtils;
import com.example.API_POKEMON_CRUD.Servicios.UserDetailsServiceImpl;
import java.util.HashMap;
import java.util.Map;
import com.example.API_POKEMON_CRUD.FTO.user_pokemon_register;
import com.example.API_POKEMON_CRUD.Servicios.pokemon_methods;
import com.example.API_POKEMON_CRUD.Servicios.user_method;
import com.example.API_POKEMON_CRUD.entidad.pokemons;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200/")
public class restcontrollerapi {

	@Autowired
	private user_method servicio_user;

	@Autowired
	private pokemon_methods servicio;

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private JwtUtils jwtUtils;

	@Autowired
	private UserDetailsServiceImpl userDetailsService;

	@PostMapping("/loginn")
	public ResponseEntity<Map<String, Object>> login(@RequestBody user_pokemon user) {
		try {
			authenticationManager
					.authenticate(new UsernamePasswordAuthenticationToken(user.getNombre(), user.getContrasena()));
		} catch (AuthenticationException e) {
			// Manejar la autenticación fallida
			Map<String, Object> errorResponse = new HashMap<>();
			errorResponse.put("message", "Credenciales incorrectas");
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(errorResponse);
		}

		// Si la autenticación es exitosa, genera el token JWT
		final UserDetails userDetails = userDetailsService.loadUserByUsername(user.getNombre());
		final String token = jwtUtils.generateAccessToken(userDetails.getUsername());

		// Devuelve el token JWT en la respuesta
		Map<String, Object> response = new HashMap<>();
		response.put("token", token);
		response.put("message", "Autenticación exitosa");
		response.put("nombre", userDetails.getUsername());
		return ResponseEntity.ok(response);
	}

	@GetMapping("/pokemon")
	public List<pokemons> pokemonscaught() {
		return servicio.allpokemons();
	}

	@GetMapping("/pokemons")
	public List<pokemons> caughtPokemons() {
		return servicio.pokemonscaught();
	}

	@PostMapping("/regist")
	public user_pokemon registrar(@RequestBody user_pokemon_register registeruser) {
		return servicio_user.guardar(registeruser);
	}

	@GetMapping("/users/pokemons")
	public ResponseEntity<List<String>> getUsersWithPokemons(@RequestParam String username) {
	    List<String> caughtPokemons = servicio_user.userswithPokemons(username);
	    return new ResponseEntity<>(caughtPokemons, HttpStatus.OK);
	}


}
