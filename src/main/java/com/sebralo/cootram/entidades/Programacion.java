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
@Table(name = "programacion")
public class Programacion implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_ruta", nullable = false)
    private Ruta ruta;

    @Column(name = "dia_semana", length = 20)
    private String diaSemana;

    @Column(name = "hora_parqueo")
    private Long horaParqueo;

    @Column(name = "hora_salida")
    private Long horaSalida;

    public Programacion() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Ruta getRuta() { return ruta; }
    public void setRuta(Ruta ruta) { this.ruta = ruta; }
    public String getDiaSemana() { return diaSemana; }
    public void setDiaSemana(String diaSemana) { this.diaSemana = diaSemana; }
    public Long getHoraParqueo() { return horaParqueo; }
    public void setHoraParqueo(Long horaParqueo) { this.horaParqueo = horaParqueo; }
    public Long getHoraSalida() { return horaSalida; }
    public void setHoraSalida(Long horaSalida) { this.horaSalida = horaSalida; }
}
