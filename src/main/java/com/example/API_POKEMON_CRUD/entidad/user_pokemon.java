package com.example.API_POKEMON_CRUD.entidad;

import java.util.List;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Builder;

@Entity
@Table(name="user_pokemon",uniqueConstraints = @UniqueConstraint(columnNames="email"))
public class user_pokemon {
	
	public user_pokemon(Long id, String nombre, String contrasena) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.contrasena = contrasena;
	}

	public user_pokemon(Long id, String nombre, String contrasena, String email) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
	}

	public user_pokemon(Long id, String nombre, String contrasena, String email, Set<pokemons> pokemons_usuarios) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
		this.pokemons_usuarios = pokemons_usuarios;
	}

	public user_pokemon(String nombre, String contrasena, String email) {
		super();
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.email = email;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column (name="nombre",unique=true)
	@NotBlank(message = "El nombre no puede estar en blanco")
	@Size(max=20)
	private String nombre;
	
	@Column (name="contrasena")
	@NotBlank
	private String contrasena;
	
	@Column (name="email")
	@Email
	@NotBlank
	private String email;

	@Column (name = "equipos")
	@OneToMany(mappedBy = "userPokemon")
	private List<EquipoPokemon> equipos;


	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.MERGE)
	@JoinTable(
			name="user_pokemon_caught" ,
			joinColumns= @JoinColumn(name="user_pokemon_id", referencedColumnName="id"), 
			inverseJoinColumns=@JoinColumn(name="pokemon_id", referencedColumnName="id")
			)
	private Set<pokemons> pokemons_usuarios;
	
	 @ManyToMany(fetch=FetchType.EAGER,targetEntity= users_Roles.class ,cascade=CascadeType.PERSIST)
	    @JoinTable(
	        name="user_pokemon_roles",
	        joinColumns=@JoinColumn(name="user_pokemon_id"),
	        inverseJoinColumns=@JoinColumn(name="roles_id")
	    )
	    private Set<users_Roles> roles;
	    
	    @OneToMany(mappedBy = "userPokemon")
	    private List<UserPokemonCaught> caughtPokemons;

	
	
	public user_pokemon() {
		
	}
	
	
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



	public Set<users_Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<users_Roles> roles) {
		this.roles = roles;
	}

	public Set<pokemons> getPokemons_usuarios() {
		return pokemons_usuarios;
	}

	public void setPokemons_usuarios(Set<pokemons> pokemons_usuarios) {
		this.pokemons_usuarios = pokemons_usuarios;
	}

	public List<UserPokemonCaught> getCaughtPokemons() {
		return caughtPokemons;
	}

	public void setCaughtPokemons(List<UserPokemonCaught> caughtPokemons) {
		this.caughtPokemons = caughtPokemons;
	}


}
