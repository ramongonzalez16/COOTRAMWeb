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
@Table(name = "respuesta")
public class Respuesta implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "enunciado", nullable = false, length = 255)
    private String enunciado;

    @ManyToOne
    @JoinColumn(name = "id_pregunta", nullable = false)
    private Pregunta pregunta;

    public Respuesta() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getEnunciado() { return enunciado; }
    public void setEnunciado(String enunciado) { this.enunciado = enunciado; }
    public Pregunta getPregunta() { return pregunta; }
    public void setPregunta(Pregunta pregunta) { this.pregunta = pregunta; }
}
