package com.sebralo.cootram.entidades;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "conductor")
public class Conductor extends Persona {

    private static final long serialVersionUID = 1L;

    @Column(name = "fecha_long_pago")
    private Long fechaLongPago;

    @ManyToOne
    @JoinColumn(name = "id_tipo_conductor", nullable = false)
    private TipoConductor tipoConductor;

    public Conductor() {}

    public Conductor(Long cedula, String nombre, String direccion, String telefono,
                     Long fechaLongPago, TipoConductor tipoConductor) {
        super(cedula, nombre, direccion, telefono);
        this.fechaLongPago = fechaLongPago;
        this.tipoConductor = tipoConductor;
    }

    // Getters y Setters
    public Long getFechaLongPago() { return fechaLongPago; }
    public void setFechaLongPago(Long fechaLongPago) { this.fechaLongPago = fechaLongPago; }
    public TipoConductor getTipoConductor() { return tipoConductor; }
    public void setTipoConductor(TipoConductor tipoConductor) { this.tipoConductor = tipoConductor; }
}
