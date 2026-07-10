package com.sebralo.cootram.daos;

import com.sebralo.cootram.idaos.IDAOUsuario;
import com.sebralo.cootram.entidades.Usuario;
import com.sebralo.cootram.utilidades.JPAUtil;
import jakarta.enterprise.context.Dependent;
import jakarta.inject.Named;
import java.util.List;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.io.Serializable;

@Named
@Dependent
public class DAOUsuario implements IDAOUsuario ,Serializable {
    
    private static final long serialVersionUID=1L;
    @Override
    public void guardar(Usuario entidad) {
        EntityManager em = JPAUtil.getEntityManager();
        try { em.getTransaction().begin(); em.persist(entidad); em.getTransaction().commit(); }
        catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public void actualizar(Usuario entidad) {
        EntityManager em = JPAUtil.getEntityManager();
        try { em.getTransaction().begin(); em.merge(entidad); em.getTransaction().commit(); }
        catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public void eliminar(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try { em.getTransaction().begin(); Usuario u = em.find(Usuario.class, id); if(u!=null)em.remove(u); em.getTransaction().commit(); }
        catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public Usuario buscarPorId(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try { return em.find(Usuario.class, id); } finally { em.close(); }
    }

    @Override
    public List<Usuario> listarTodos() {
        EntityManager em = JPAUtil.getEntityManager();
        try { return em.createQuery("SELECT u FROM Usuario u ORDER BY u.nombre", Usuario.class).getResultList(); }
        finally { em.close(); }
    }

    @Override
    public Usuario validarIngreso(String usuario, String contrasena) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            TypedQuery<Usuario> q = em.createQuery(
                "SELECT u FROM Usuario u WHERE u.usuario = :usu AND u.contrasena = :contra", Usuario.class);
            q.setParameter("usu", usuario); q.setParameter("contra", contrasena);
            return q.getResultList().isEmpty() ? null : q.getSingleResult();
        } finally { em.close(); }
    }
}
