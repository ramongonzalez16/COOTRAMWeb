package com.sebralo.cootram.entidades;

import java.io.Serializable;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "formato_alcoholemia")
public class FormatoAlcoholemia implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "fecha_long_elab")
    private Long fechaLongElab;

    public FormatoAlcoholemia() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getFechaLongElab() { return fechaLongElab; }
    public void setFechaLongElab(Long fechaLongElab) { this.fechaLongElab = fechaLongElab; }
}
