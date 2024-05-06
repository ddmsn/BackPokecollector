package com.example.API_POKEMON_CRUD.Repository;

import com.example.API_POKEMON_CRUD.entidad.Movimiento;

import com.example.API_POKEMON_CRUD.entidad.pokemons;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface movimientosRepository  extends JpaRepository<Movimiento,Long> {
    @Query(value = "SELECT * " +
            "FROM movimientos ",
            nativeQuery = true)
    List<pokemons> listaMovimientos();
}
