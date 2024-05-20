package com.example.API_POKEMON_CRUD.entidad;
import jakarta.persistence.*;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Set;
import lombok.*;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "equipo_pokemon")
public class EquipoPokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "activo")
    private boolean activo;

    @Column(name = "nombre")
    private String nombreEquipo;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private user_pokemon userPokemon;

    @ManyToOne
    @JoinColumn(name = "pokemon1_id")
    private pokemons pokemon1;

    @ManyToOne
    @JoinColumn(name = "pokemon2_id")
    private pokemons pokemon2;

    @ManyToOne
    @JoinColumn(name = "pokemon3_id")
    private pokemons pokemon3;

    @ManyToOne
    @JoinColumn(name = "pokemon4_id")
    private pokemons pokemon4;

    @ManyToOne
    @JoinColumn(name = "pokemon5_id")
    private pokemons pokemon5;

    @ManyToOne
    @JoinColumn(name = "pokemon6_id")
    private pokemons pokemon6;

}
