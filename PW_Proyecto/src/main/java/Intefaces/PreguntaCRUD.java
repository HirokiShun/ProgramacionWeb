/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Intefaces;

/**
 *
 * @author diego
 */
import Modelos.Pregunta;
import java.util.List;

public interface PreguntaCRUD 
{
    public List listar();
    public void agregar(Pregunta inputUser);
    public void editar(Pregunta inputUser);
    public void eliminar(String id);
}
