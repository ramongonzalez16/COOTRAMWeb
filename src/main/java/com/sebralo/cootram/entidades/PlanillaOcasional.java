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
@Table(name = "planilla_ocasional")
public class PlanillaOcasional implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_vehiculo", nullable = false)
    private Vehiculo vehiculo;

    @Column(name = "fecha_long")
    private Long fechaLong;

    @Column(name = "valor_planilla")
    private Double valorPlanilla;

    public PlanillaOcasional() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Vehiculo getVehiculo() { return vehiculo; }
    public void setVehiculo(Vehiculo vehiculo) { this.vehiculo = vehiculo; }
    public Long getFechaLong() { return fechaLong; }
    public void setFechaLong(Long fechaLong) { this.fechaLong = fechaLong; }
    public Double getValorPlanilla() { return valorPlanilla; }
    public void setValorPlanilla(Double valorPlanilla) { this.valorPlanilla = valorPlanilla; }
}
