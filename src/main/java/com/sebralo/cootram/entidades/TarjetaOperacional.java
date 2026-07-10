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
@Table(name = "tarjeta_operacional")
public class TarjetaOperacional implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "fecha_long")
    private Long fechaLong;

    @ManyToOne
    @JoinColumn(name = "id_estado", nullable = false)
    private EstadoTarjetaOperacional estado;

    public TarjetaOperacional() {}

    public TarjetaOperacional(Long id, Long fechaLong, EstadoTarjetaOperacional estado) {
        this.id = id;
        this.fechaLong = fechaLong;
        this.estado = estado;
    }

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getFechaLong() { return fechaLong; }
    public void setFechaLong(Long fechaLong) { this.fechaLong = fechaLong; }
    public EstadoTarjetaOperacional getEstado() { return estado; }
    public void setEstado(EstadoTarjetaOperacional estado) { this.estado = estado; }
}
