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
@Table(name = "encuesta")
public class Encuesta implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "fecha")
    private Long fecha;

    @ManyToOne
    @JoinColumn(name = "id_conductor", nullable = false)
    private Conductor conductor;

    @Column(name = "id_operador")
    private Long idOperador;

    @Column(name = "primera_medida", length = 255)
    private String primeraMedida;

    @Column(name = "segunda_medida", length = 255)
    private String segundaMedida;

    @Column(name = "observaciones", length = 500)
    private String observaciones;

    @Column(name = "conclusion", length = 255)
    private String conclusion;

    @ManyToOne
    @JoinColumn(name = "id_municipio", nullable = false)
    private Municipio municipio;

    public Encuesta() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getFecha() { return fecha; }
    public void setFecha(Long fecha) { this.fecha = fecha; }
    public Conductor getConductor() { return conductor; }
    public void setConductor(Conductor conductor) { this.conductor = conductor; }
    public Long getIdOperador() { return idOperador; }
    public void setIdOperador(Long idOperador) { this.idOperador = idOperador; }
    public String getPrimeraMedida() { return primeraMedida; }
    public void setPrimeraMedida(String primeraMedida) { this.primeraMedida = primeraMedida; }
    public String getSegundaMedida() { return segundaMedida; }
    public void setSegundaMedida(String segundaMedida) { this.segundaMedida = segundaMedida; }
    public String getObservaciones() { return observaciones; }
    public void setObservaciones(String observaciones) { this.observaciones = observaciones; }
    public String getConclusion() { return conclusion; }
    public void setConclusion(String conclusion) { this.conclusion = conclusion; }
    public Municipio getMunicipio() { return municipio; }
    public void setMunicipio(Municipio municipio) { this.municipio = municipio; }
}
