package com.sebralo.cootram.entidades;

import java.io.Serializable;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "viaje")
public class Viaje implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_horario", nullable = false)
    private Horario horario;

    @ManyToOne
    @JoinColumn(name = "id_subruta", nullable = false)
    private Subruta subruta;

    @ManyToOne
    @JoinColumn(name = "id_conduce", nullable = false)
    private Conduce conduce;

    @Column(name = "total_pasajeros")
    private Integer totalPasajeros;

    @Column(name = "menor_edad")
    private Integer menorEdad;

    @Column(name = "numero_menor_edad")
    private Integer numeroMenorEdad;

    public Viaje() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Horario getHorario() { return horario; }
    public void setHorario(Horario horario) { this.horario = horario; }
    public Subruta getSubruta() { return subruta; }
    public void setSubruta(Subruta subruta) { this.subruta = subruta; }
    public Conduce getConduce() { return conduce; }
    public void setConduce(Conduce conduce) { this.conduce = conduce; }
    public Integer getTotalPasajeros() { return totalPasajeros; }
    public void setTotalPasajeros(Integer totalPasajeros) { this.totalPasajeros = totalPasajeros; }
    public Integer getMenorEdad() { return menorEdad; }
    public void setMenorEdad(Integer menorEdad) { this.menorEdad = menorEdad; }
    public Integer getNumeroMenorEdad() { return numeroMenorEdad; }
    public void setNumeroMenorEdad(Integer numeroMenorEdad) { this.numeroMenorEdad = numeroMenorEdad; }
}
