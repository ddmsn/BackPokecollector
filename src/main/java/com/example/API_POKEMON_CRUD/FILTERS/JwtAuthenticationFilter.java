package com.example.API_POKEMON_CRUD.FILTERS;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.example.API_POKEMON_CRUD.Repository.users_Repository;
import com.example.API_POKEMON_CRUD.entidad.user_pokemon;
import com.example.API_POKEMON_CRUD.jasonwebtoken.JwtUtils;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//AYUDA A AUTENTICARNOS EN NUESTRA APP
public class JwtAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

	private JwtUtils jwtUtils;

	public JwtAuthenticationFilter(JwtUtils jwtUtils) {
		this.jwtUtils = jwtUtils;
	}

	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
			throws AuthenticationException {

		user_pokemon usuario = null;
		String nombre = "";
		String contrasena = "";

		try {
			usuario = new ObjectMapper().readValue(request.getInputStream(), user_pokemon.class);

			nombre = usuario.getNombre();

			contrasena = usuario.getContrasena();

		}

		catch (StreamReadException e) {
			throw new RuntimeException(e);
		} catch (DatabindException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}

		UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(nombre,
				contrasena);

		return getAuthenticationManager().authenticate(authenticationToken);
	}

	@Override
	protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain,
			Authentication authResult) throws IOException, ServletException {

		User user = (User) authResult.getPrincipal();

		String token = jwtUtils.generateAccessToken(user.getUsername());

		response.addHeader("Authorization", token);

		Map<String, Object> httpResponse = new HashMap<>();

		httpResponse.put("token", token);
		httpResponse.put("Message", "Autenticación correcta");
		httpResponse.put("username", user.getUsername());

		response.getWriter().write(new ObjectMapper().writeValueAsString(httpResponse));
		response.setStatus(HttpStatus.OK.value());
		response.setContentType(MediaType.APPLICATION_JSON_VALUE);
		response.getWriter().flush();
		super.successfulAuthentication(request, response, chain, authResult);
	}
}
	
