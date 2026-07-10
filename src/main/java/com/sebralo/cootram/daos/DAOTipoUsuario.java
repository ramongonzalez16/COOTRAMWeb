package com.sebralo.cootram.daos;

import com.sebralo.cootram.idaos.IDAOTipoUsuario;
import com.sebralo.cootram.entidades.TipoUsuario;
import com.sebralo.cootram.utilidades.JPAUtil;
import jakarta.enterprise.context.Dependent;
import jakarta.persistence.EntityManager;
import jakarta.inject.Named;
import java.io.Serializable;
import java.util.List;

@Named
@Dependent
public class DAOTipoUsuario implements IDAOTipoUsuario,Serializable {
    
    private static final long serialVersionUID=1L;
    @Override
    public void guardar(TipoUsuario entidad) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(entidad);
            em.getTransaction().commit();
        } catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public void actualizar(TipoUsuario entidad) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(entidad);
            em.getTransaction().commit();
        } catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public void eliminar(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            TipoUsuario t = em.find(TipoUsuario.class, id); if (t != null) em.remove(t);
            em.getTransaction().commit();
        } catch (Exception e) { if (em.getTransaction().isActive()) em.getTransaction().rollback(); throw e; }
        finally { em.close(); }
    }

    @Override
    public TipoUsuario buscarPorId(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try { return em.find(TipoUsuario.class, id); } finally { em.close(); }
    }

    @Override
    public List<TipoUsuario> listarTodos() {
        EntityManager em = JPAUtil.getEntityManager();
        try { return em.createQuery("SELECT t FROM TipoUsuario t ORDER BY t.descripcion", TipoUsuario.class).getResultList(); }
        finally { em.close(); }
    }
}
