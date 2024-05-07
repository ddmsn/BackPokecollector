package com.example.API_POKEMON_CRUD.entidad;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "movimientos")
public class Movimiento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;

    private int danio;

    public Movimiento(Long id, String nombre, int danio) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.danio = danio;
    }

    public Movimiento() {

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

    public int getDanio() {
        return danio;
    }

    public void setDanio(int danio) {
        this.danio = danio;
    }
}
