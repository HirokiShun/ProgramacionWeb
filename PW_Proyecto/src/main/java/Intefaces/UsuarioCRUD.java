package Intefaces;
import Modelos.Usuario;
import java.util.List;

/**
 *
 * @author diego
 */
public class UsuarioCRUD {
    public List listar();
    public boolean agregar(Usuario inputUser);
    public boolean editar(String userToUpdate, Usuario inputUser);
    public void eliminar(String username);
}
