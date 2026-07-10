package com.sebralo.cootram.utilidades;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;




public class JPAUtil {

    // Nombre exacto de tu unidad de persistencia definido en persistence.xml
    private static final String UNIDAD_PERSISTENCIA = "CootramPU";
    private static EntityManagerFactory fabricaEntidades;

    // Se ejecuta solo una vez al cargar la clase
    static {
        try {
            fabricaEntidades = Persistence.createEntityManagerFactory(UNIDAD_PERSISTENCIA);
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError("Error al inicializar la fábrica de EntityManager: " + ex);
        }
    }

    // Devuelve una nueva conexión/EntityManager lista para usar
    public static EntityManager getEntityManager() {
        return fabricaEntidades.createEntityManager();
    }

    // Cierra la fábrica cuando la aplicación se apaga (buena práctica)
    public static void cerrar() {
        if (fabricaEntidades != null && fabricaEntidades.isOpen()) {
            fabricaEntidades.close();
        }
    }
}
