package com.sebralo.cootram.idaos;

import java.util.List;

public interface IDAOGenerico<T, ID> {
    void guardar(T entidad);
    void actualizar(T entidad);
    void eliminar(ID id);
    T buscarPorId(ID id);
    List<T> listarTodos();
}
