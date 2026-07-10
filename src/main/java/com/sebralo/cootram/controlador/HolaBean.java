package com.sebralo.cootram.controlador;

import jakarta.enterprise.context.RequestScoped;
    import jakarta.inject.Named;

@Named
@RequestScoped
public class HolaBean {
    
    public String getMensaje() {
        return "¡Cootram funcionando con CDI! 🚀";
    }
}
