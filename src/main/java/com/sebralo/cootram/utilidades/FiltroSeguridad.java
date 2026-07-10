package com.sebralo.cootram.utilidades;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
/**
 *
 * @author Bienvenido
 */
@WebFilter("*.xhtml") // Se aplica a todas las páginas XHTML
public class FiltroSeguridad implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Sin configuración especial
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        
        // 📌 Páginas permitidas SIN sesión
        String ruta = req.getRequestURI();
        boolean esLogin = ruta.contains("/login.xhtml");
        boolean esRecursos = ruta.contains("/resources/"); // CSS, imágenes, etc.
        
        // 📌 Verificar si hay usuario en sesión
        Object usuario = req.getSession().getAttribute("usuarioActual");
        
        if (!esLogin && !esRecursos && usuario == null) {
            // ⛔ No tiene permiso: redirigir al login
            res.sendRedirect(req.getContextPath() + "/login.xhtml");
            return;
        }
        
        // ✅ Permitir el paso
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Liberar recursos si es necesario
    }
}

