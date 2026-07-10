/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.sebralo.cootram.idaos;
import com.sebralo.cootram.entidades.Usuario;
/**
 *
 * @author Bienvenido
 */
public interface IDAOUsuario extends IDAOGenerico<Usuario, Long>{
    Usuario validarIngreso(String usuario, String Contrasenha);
}
