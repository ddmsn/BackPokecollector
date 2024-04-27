package com.example.API_POKEMON_CRUD.Controllerr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.API_POKEMON_CRUD.Servicios.pokemon_methods;
import com.example.API_POKEMON_CRUD.Servicios.user_method;
import com.example.API_POKEMON_CRUD.entidad.pokemons;
import com.example.API_POKEMON_CRUD.entidad.user_pokemon;

import jakarta.servlet.http.HttpSession;


@Controller
public class pokemons_Controller {

	@Autowired
	private user_method servicio_user;
	@Autowired
	private pokemon_methods servicio;

	@GetMapping("/chatonline")
    public String showChatPage(HttpSession session,  Model model) {
		
        String username = (String) session.getAttribute("username");
		
		model.addAttribute("username",username);
		
		
        return "chat";
    }
	
	
	@GetMapping("/pokes")
	public String showAllPokemons(Model modelo,@SessionAttribute("username") String username) {
		modelo.addAttribute("pokemons", servicio.allpokemons());
		
		 List<pokemons> pokemon_caught = servicio.pokemonscaught();	
		 
	        modelo.addAttribute("pokemon_caught",pokemon_caught);
			
			List<String> caughtPokemons = servicio_user.userswithPokemons(username);
		    modelo.addAttribute("user_with_pokemon",caughtPokemons);	
	        
		return "index";		
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, Model modelo ) {
    session.getAttribute("username");

	session.setAttribute("username",null);
	
	modelo.addAttribute("username",null);
		
		
		return "newuser";
		
	}
	
	@GetMapping("/newuser")
	public String showform(HttpSession session) {
		return "newuser";
	}

	@PostMapping("/newuser")
	public String postform(Model modelo,@RequestParam(value="username") String username ,@RequestParam(value ="password") String password,HttpSession session) {
		modelo.addAttribute("users", servicio_user.allusers());
		
		List<String> caughtPokemons = servicio_user.getUsersWithCaughtPokemons();
		
       modelo.addAttribute("user_with_pokemon",caughtPokemons);
       
       session.setAttribute("username", username);
       
       modelo.addAttribute("user",username);
       
       user_pokemon usuario=servicio_user.findByNombre(username);
       
       if (usuario != null && usuario.getContrasena().equals(password)) {
    	    session.setAttribute("username", username); // Establecer el nombre de usuario en la sesión
    	    return "redirect:/"; // Redirigir a la página principal
    	} else {
    	    modelo.addAttribute("error","Datos inválidos");
    	    return "newuser";
    	}

	}

	@GetMapping("/users")
	public String showAllUsers(Model modelo, @SessionAttribute("username") String username) {
		modelo.addAttribute("users", servicio_user.allusers());
		
		 List<String> caughtPokemons = servicio_user.userswithPokemons(username);
		
        modelo.addAttribute("user_with_pokemon",caughtPokemons);
		return "users";
	}
	
	
}
