package com.example.API_POKEMON_CRUD.Controllerr;

import java.util.*;

import com.example.API_POKEMON_CRUD.Repository.Equipos_Repository;
import com.example.API_POKEMON_CRUD.entidad.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import com.example.API_POKEMON_CRUD.jasonwebtoken.JwtUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.example.API_POKEMON_CRUD.Servicios.UserDetailsServiceImpl;
import com.example.API_POKEMON_CRUD.FTO.user_pokemon_register;
import com.example.API_POKEMON_CRUD.Repository.UserPokemonCaughtRepository;
import com.example.API_POKEMON_CRUD.Repository.pokemons_Repository;
import com.example.API_POKEMON_CRUD.Servicios.pokemon_methods;
import com.example.API_POKEMON_CRUD.Servicios.user_method;

@Slf4j
@RestController
@RequestMapping("/api")
@CrossOrigin(origins = {"http://localhost:4200/", "https://pokecollector-p0k3.web.app/"})
public class restcontrollerapi {

	@Autowired
	private Equipos_Repository equiposRepository;
	@Autowired
	private UserPokemonCaughtRepository userPokemonCaught;

	@Autowired
	private user_method servicio_user;

	@Autowired
	private pokemon_methods servicio;
	@Autowired
	private pokemons_Repository pokemonsrepository;

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
	@GetMapping("pokemon/{id}")
	    public ResponseEntity<pokemons> getPokemonById(@PathVariable Long id) {
	        pokemons pokemon = pokemonsrepository.findById(id).orElse(null);
	        if (pokemon != null) {
	            return new ResponseEntity<>(pokemon, HttpStatus.OK);
	        } else {
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	        }
	    }
	@GetMapping("/movimientos/{idPokemon}")
	public List<Movimiento> listarMovimientos(@PathVariable Long idPokemon) {
		return servicio.movimientosByPokemonId(idPokemon);
	}
	@GetMapping("/getAllEquipos/{idUsuario}")
	public ArrayList<LinkedHashMap<String, Object>> listarEquipos(@PathVariable Long idUsuario) {
		log.error("numero: "+idUsuario);
		List<EquipoPokemon> lista = equiposRepository.findAllEquiposByIdUser(idUsuario);
		ArrayList<LinkedHashMap<String, Object>> equipos = new ArrayList<>();
		for (int i = 0; i < lista.size(); i++) {
			LinkedHashMap<String, Object> equipoPokemon = new LinkedHashMap<String,Object>();
			equipoPokemon.put("user_id",lista.get(i).getUserPokemon().getId());
			equipoPokemon.put("nombre",lista.get(i).getNombreEquipo());
			equipoPokemon.put("pokemon1_id",lista.get(i).getPokemon1().getId());
			equipoPokemon.put("pokemon2_id",lista.get(i).getPokemon2().getId());
			equipoPokemon.put("pokemon3_id",lista.get(i).getPokemon3().getId());
			equipoPokemon.put("pokemon4_id",lista.get(i).getPokemon4().getId());
			equipoPokemon.put("pokemon5_id",lista.get(i).getPokemon5().getId());
			equipoPokemon.put("pokemon6_id",lista.get(i).getPokemon6().getId());
			equipos.add(equipoPokemon);
		}
		return equipos;
	}

	@PostMapping("/guardarEquipo")
	public ResponseEntity<String> guardarEquipo(@RequestBody LinkedHashMap<String, Object> equipo) {
		try {
			if(equiposRepository.comprobarEquiposActivos((Integer) equipo.get("user_id")) >= 1){
				try{
					equiposRepository.modificarEquipoPokemon(
							(Integer) equipo.get("user_id"),
							(String) equipo.get("nombre"),
							(Integer) equipo.get("pokemon1_id"),
							(Integer) equipo.get("pokemon2_id"),
							(Integer) equipo.get("pokemon3_id"),
							(Integer) equipo.get("pokemon4_id"),
							(Integer) equipo.get("pokemon5_id"),
							(Integer) equipo.get("pokemon6_id"));
					Map<String, String> successResponse = new HashMap<>();
					successResponse.put("message", "Equipo modificado exitosamente.");

					ObjectMapper objectMapper = new ObjectMapper();
					String successJson = objectMapper.writeValueAsString(successResponse);

					return ResponseEntity.ok(successJson);
				}
				catch(Exception e){
					return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al modificar equipo Pokemon");
				}
			}else{
				equiposRepository.guardarEquipoPokemon(
						(Integer) equipo.get("user_id"),
						(String) equipo.get("nombre"),
						(Integer) equipo.get("pokemon1_id"),
						(Integer) equipo.get("pokemon2_id"),
						(Integer) equipo.get("pokemon3_id"),
						(Integer) equipo.get("pokemon4_id"),
						(Integer) equipo.get("pokemon5_id"),
						(Integer) equipo.get("pokemon6_id"),
						true);
			}
			Map<String, String> successResponse = new HashMap<>();
			successResponse.put("message", "Equipo añadido exitosamente.");

			ObjectMapper objectMapper = new ObjectMapper();
			String successJson = objectMapper.writeValueAsString(successResponse);

			return ResponseEntity.ok(successJson);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear el equipo Pokemon");
		}
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

	@PostMapping("/add-pokemon")
	public ResponseEntity<String> addPokemonToUser(@RequestBody AddPokemonRequest request) {
	    try {
	        if (userPokemonCaught.existsByUserPokemonIdAndPokemonId(request.getUserPokemonId(), request.getPokemonId())) {
	            return ResponseEntity.badRequest().body("El usuario ya tiene este Pokémon.");
	        }

	        servicio_user.insertPokemonCaught(request.getPokemonId(), request.getUserPokemonId());
	        
	        Map<String, String> successResponse = new HashMap<>();
	        successResponse.put("message", "Pokémon añadido exitosamente.");

	        ObjectMapper objectMapper = new ObjectMapper();
	        String successJson = objectMapper.writeValueAsString(successResponse);

	        return ResponseEntity.ok(successJson);
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al añadir el Pokémon al usuario");
	    }
	}

	 @PostMapping("/find-id")
	    public ResponseEntity<Long> findUserIdByNombre(@RequestBody FindUserIdRequest request) {
	        Long userId = servicio_user.findUserIdByNombre(request.getNombre());
	        if (userId != null) {
	            return ResponseEntity.ok(userId);
	        } else {
	            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
	        }
	    }
	 
	 @DeleteMapping("/deletepokemon")
	    public ResponseEntity<?> deleteCaughtPokemon(@RequestBody AddPokemonRequest deleteRequest) {
	        Long pokemonId = deleteRequest.getPokemonId();
	        Long userPokemonId = deleteRequest.getUserPokemonId();
	        servicio_user.deleteCaughtPokemon(pokemonId, userPokemonId);
	        return ResponseEntity.ok().build();
	    }
	
	 
}
