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
@Table(name = "vehiculo")
public class Vehiculo implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "placa")
    private String placa;

    @Column(name = "interno", length = 20)
    private String interno;

    @ManyToOne
    @JoinColumn(name = "id_tipo_vehiculo", nullable = false)
    private TipoVehiculo tipoVehiculo;

    @Column(name = "sillas_disponibles")
    private Integer sillasDisponibles;

    @Column(name = "fecha_preventiva")
    private Long fechaPreventiva;

    @Column(name = "fecha_soat")
    private Long fechaSoat;

    @Column(name = "fecha_tecno")
    private Long fechaTecno;

    @ManyToOne
    @JoinColumn(name = "id_tarjeta_operacional")
    private TarjetaOperacional tarjetaOperacional;

    @ManyToOne
    @JoinColumn(name = "id_estado_vehiculo", nullable = false)
    private EstadoVehiculo estadoVehiculo;

    @ManyToOne
    @JoinColumn(name = "cedula_conductor")
    private Conductor conductor;

    @ManyToOne
    @JoinColumn(name = "id_parqueadero")
    private Parqueadero parqueadero;

    public Vehiculo() {}

    // Getters y Setters
    public String getPlaca() { return placa; }
    public void setPlaca(String placa) { this.placa = placa; }
    public String getInterno() { return interno; }
    public void setInterno(String interno) { this.interno = interno; }
    public TipoVehiculo getTipoVehiculo() { return tipoVehiculo; }
    public void setTipoVehiculo(TipoVehiculo tipoVehiculo) { this.tipoVehiculo = tipoVehiculo; }
    public Integer getSillasDisponibles() { return sillasDisponibles; }
    public void setSillasDisponibles(Integer sillasDisponibles) { this.sillasDisponibles = sillasDisponibles; }
    public Long getFechaPreventiva() { return fechaPreventiva; }
    public void setFechaPreventiva(Long fechaPreventiva) { this.fechaPreventiva = fechaPreventiva; }
    public Long getFechaSoat() { return fechaSoat; }
    public void setFechaSoat(Long fechaSoat) { this.fechaSoat = fechaSoat; }
    public Long getFechaTecno() { return fechaTecno; }
    public void setFechaTecno(Long fechaTecno) { this.fechaTecno = fechaTecno; }
    public TarjetaOperacional getTarjetaOperacional() { return tarjetaOperacional; }
    public void setTarjetaOperacional(TarjetaOperacional tarjetaOperacional) { this.tarjetaOperacional = tarjetaOperacional; }
    public EstadoVehiculo getEstadoVehiculo() { return estadoVehiculo; }
    public void setEstadoVehiculo(EstadoVehiculo estadoVehiculo) { this.estadoVehiculo = estadoVehiculo; }
    public Conductor getConductor() { return conductor; }
    public void setConductor(Conductor conductor) { this.conductor = conductor; }
    public Parqueadero getParqueadero() { return parqueadero; }
    public void setParqueadero(Parqueadero parqueadero) { this.parqueadero = parqueadero; }
}
