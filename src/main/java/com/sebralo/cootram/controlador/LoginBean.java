package com.sebralo.cootram.controlador;

import com.sebralo.cootram.entidades.Usuario;
import com.sebralo.cootram.daos.DAOUsuario;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import java.io.Serializable;

@Named
@SessionScoped
public class LoginBean implements Serializable {
    private static final long serialVersionUID = 1L;

    // Campos del formulario
    private String usuario;
    private String clave;
    // Usuario autenticado
    private Usuario usuarioActual;

    
    private DAOUsuario usuarioDAO;

    // --- Lógica de ingreso ACTUALIZADA para guardar en sesión ---
    public String ingresar() {
        FacesContext ctx = FacesContext.getCurrentInstance();
        try {
            Usuario u = usuarioDAO.validarIngreso(usuario, clave);
            if (u != null) {
                usuarioActual = u;
                // ✅ Guardamos en sesión para que el filtro lo reconozca
                ctx.getExternalContext().getSessionMap().put("usuarioActual", u);
                return "/index.xhtml?faces-redirect=true";
            } else {
                ctx.addMessage(null, new FacesMessage(
                    FacesMessage.SEVERITY_ERROR,
                    "Acceso inválido",
                    "Usuario o contraseña incorrectos"
                ));
                return null; // Se queda en el login
            }
        } catch (Exception e) {
            ctx.addMessage(null, new FacesMessage(
                FacesMessage.SEVERITY_FATAL,
                "Error del sistema",
                "No se pudo procesar la solicitud: " + e.getMessage()
            ));
            return null;
        }
    }

    // --- Cerrar sesión ACTUALIZADA para limpiar todo ---
    public String cerrarSesion() {
        FacesContext ctx = FacesContext.getCurrentInstance();
        // ✅ Eliminamos el usuario de la sesión
        ctx.getExternalContext().getSessionMap().remove("usuarioActual");
        // ✅ Invalidamos la sesión completamente
        ctx.getExternalContext().invalidateSession();
        return "/login.xhtml?faces-redirect=true";
    }

    // --- Getters y Setters ---
    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }
    public String getClave() { return clave; }
    public void setClave(String clave) { this.clave = clave; }
    public Usuario getUsuarioActual() { return usuarioActual; }
}
