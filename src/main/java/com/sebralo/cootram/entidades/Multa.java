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
@Table(name = "multa")
public class Multa implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_horario", nullable = false)
    private Horario horario;

    @ManyToOne
    @JoinColumn(name = "id_valor_multa", nullable = false)
    private ValorMulta valorMulta;

    public Multa() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Horario getHorario() { return horario; }
    public void setHorario(Horario horario) { this.horario = horario; }
    public ValorMulta getValorMulta() { return valorMulta; }
    public void setValorMulta(ValorMulta valorMulta) { this.valorMulta = valorMulta; }
}
