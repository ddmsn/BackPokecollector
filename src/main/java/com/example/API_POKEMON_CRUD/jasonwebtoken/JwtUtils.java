package com.example.API_POKEMON_CRUD.jasonwebtoken;

import java.security.Key;
import java.util.Date;
import java.util.function.Function;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class JwtUtils {

	@Value("${jwt.secret.key}")
	private String secretKey;
	@Value("${jwt.time.expiration}")
	private String timeExpiration;

	// GENERAR TOKEN
	public String generateAccessToken(String nombre) {

		return Jwts.builder().setSubject(nombre).setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis() + Long.parseLong(timeExpiration)))
				.signWith(getSignaturekey(), SignatureAlgorithm.HS256).compact();

	}

	// VALIDACIÓN DEL TOKEN DE ACCESO
	public boolean isTokenValid(String token) {
		try {
			Jwts.parserBuilder().setSigningKey(getSignaturekey()).build().parseClaimsJws(token).getBody();
			return true;
		} catch (Exception e) {

		}
		return false;
	}

	// OBTENER INFORMACIÓN DEL TOKEN
	public Claims info_extract(String token) {

		return Jwts.parserBuilder().setSigningKey(getSignaturekey()).build().parseClaimsJws(token).getBody();

	}
	
	//OBTENER UN SOLO CLAIM *****POSIBLE FALLO*********

	public <T> T getClaim(String token, Function<Claims, T> claimsTFunction) {
		
		Claims claimss =info_extract(token);
		return claimsTFunction.apply(claimss);

	}
	// OBTENER NOMBRE
	
	public String getNombreFromToken(String token) {
		
		return getClaim(token,Claims::getSubject);
		
	}
	
	// OBTENER FIRMA DEL TOKEN
	public Key getSignaturekey() {
		byte[] KeyBytes = Decoders.BASE64.decode(secretKey);
		return Keys.hmacShaKeyFor(KeyBytes);
	}

}
