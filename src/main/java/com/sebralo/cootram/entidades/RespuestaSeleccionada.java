package com.sebralo.cootram.entidades;

import java.io.Serializable;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "respuesta_seleccionada")
public class RespuestaSeleccionada implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_encuesta", nullable = false)
    private Encuesta encuesta;

    @ManyToOne
    @JoinColumn(name = "id_respuesta", nullable = false)
    private Respuesta respuesta;

    @ManyToOne
    @JoinColumn(name = "id_estado_seleccion", nullable = false)
    private EstadoSeleccion estadoSeleccion;

    public RespuestaSeleccionada() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Encuesta getEncuesta() { return encuesta; }
    public void setEncuesta(Encuesta encuesta) { this.encuesta = encuesta; }
    public Respuesta getRespuesta() { return respuesta; }
    public void setRespuesta(Respuesta respuesta) { this.respuesta = respuesta; }
    public EstadoSeleccion getEstadoSeleccion() { return estadoSeleccion; }
    public void setEstadoSeleccion(EstadoSeleccion estadoSeleccion) { this.estadoSeleccion = estadoSeleccion; }
}
