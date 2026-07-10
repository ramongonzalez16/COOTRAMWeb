package com.sebralo.cootram.entidades;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "usuario")
public class Usuario extends Persona {

    private static final long serialVersionUID = 1L;

    @Column(name = "usuario", nullable = false, unique = true, length = 50)
    private String usuario;

    @Column(name = "contrasena", nullable = false, length = 255)
    private String contrasena;

    @Column(name = "recordatorio", length = 255)
    private String recordatorio;

    @ManyToOne
    @JoinColumn(name = "id_tipo_usuario", nullable = false)
    private TipoUsuario tipoUsuario;

    public Usuario() {}

    public Usuario(Long cedula, String nombre, String direccion, String telefono,
                   String usuario, String contrasena, String recordatorio, TipoUsuario tipoUsuario) {
        super(cedula, nombre, direccion, telefono);
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.recordatorio = recordatorio;
        this.tipoUsuario = tipoUsuario;
    }

    // Getters y Setters
    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }
    public String getContrasena() { return contrasena; }
    public void setContrasena(String contrasena) { this.contrasena = contrasena; }
    public String getRecordatorio() { return recordatorio; }
    public void setRecordatorio(String recordatorio) { this.recordatorio = recordatorio; }
    public TipoUsuario getTipoUsuario() { return tipoUsuario; }
    public void setTipoUsuario(TipoUsuario tipoUsuario) { this.tipoUsuario = tipoUsuario; }
}
