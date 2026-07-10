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
@Table(name = "conduce")
public class Conduce implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "consecutivo")
    private Integer consecutivo;

    @ManyToOne
    @JoinColumn(name = "id_horario", nullable = false)
    private Horario horario;

    @ManyToOne
    @JoinColumn(name = "id_valor_conduce", nullable = false)
    private ValorConduce valorConduce;

    public Conduce() {}

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Integer getConsecutivo() { return consecutivo; }
    public void setConsecutivo(Integer consecutivo) { this.consecutivo = consecutivo; }
    public Horario getHorario() { return horario; }
    public void setHorario(Horario horario) { this.horario = horario; }
    public ValorConduce getValorConduce() { return valorConduce; }
    public void setValorConduce(ValorConduce valorConduce) { this.valorConduce = valorConduce; }
}
