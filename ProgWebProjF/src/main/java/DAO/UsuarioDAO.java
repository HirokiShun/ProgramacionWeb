/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.ResultSet;
import Model.Usuario;
import Connection.Connect;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import static java.util.concurrent.Executors.callable;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author diego
 */
public class UsuarioDAO {
    
    public static int RegistrarUsuario(Usuario user){
         Connection con = null;
        try{
            con = Connect.getConnection();
             // Esta linea prepara la llamada a la base de datos para insertar
             // Cada ? significa un valor a ser remplazado
               CallableStatement callable=con.prepareCall( "call CrearUsuario_SP(?,?,?,?,?,?,?)");
        
            callable.setString(1, user.getNombre()); // Remplazamos el primer parametro para el nombre del usuario
            callable.setString(2, user.getApellidos()); 
            callable.setString(3, user.getDATE()); // El tercero por la fecha
            callable.setString(4, user.getCorreoElec());
            callable.setString(5, user.getImgPerfil());
            callable.setString(6, user.getNomUsuario());
            callable.setString(7, user.getContraseña()); 
           
       
 
      
         return callable.executeUpdate();
    } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
         finally {
if (con != null) {
try {
con.close();
} catch (SQLException ex) {
Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
}
}
}
        return 0; 
    }
     
    
    public static Usuario LogInUser (Usuario user){
     Connection con = null;
            try{
             con = Connect.getConnection();
             // Esta linea prepara la llamada a la base de datos para hacer Log In
             // Cada ? significa un valor a ser remplazado
            String sql = "call ValidateUser_SP(?,?)";
            CallableStatement statement = con.prepareCall(sql);

            statement.setString(1, user.getNomUsuario());
            statement.setString(2, user.getContraseña());

            ResultSet resultset = statement.executeQuery();
            while(resultset.next()) { //Mientras el resultSet tenga algo
                 int id = resultset.getInt(1);
                String Nombre = resultset.getString(2);
                String Apellidos = resultset.getString(3);
                String FechaNac = resultset.getString (4);
                String Correo = resultset.getString (5);
                String Imagen = resultset.getString (6);
                String Usuario = resultset.getString (7);
                String Contraseña = resultset.getString (8);
                 int  Estado = resultset.getInt (10);
                return new Usuario( id,Nombre,Apellidos,FechaNac,Correo,Imagen,Usuario, Contraseña,Estado);
              
            }
        }
             catch (SQLException ex) {
         System.out.println(ex.getMessage());
        }
                  finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    System.out.println(ex.getMessage());
                }
            }
            }
        return null;


}
       
    public static Usuario InfoUsuario (int ID){
     Connection con = null;
            try{
             con = Connect.getConnection();
             // Esta linea prepara la llamada a la base de datos para hacer Log In
             // Cada ? significa un valor a ser remplazado
            String sql = "call GetUserByID(?)";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, ID);
           

            ResultSet resultset = statement.executeQuery();
            while(resultset.next()) { //Mientras el resultSet tenga algo
                 int id = resultset.getInt(1);
                String Nombre = resultset.getString(2);
                String Apellidos = resultset.getString(3);
                String FechaNac = resultset.getString (4);
                String Correo = resultset.getString (5);
                String Imagen = resultset.getString (6);
                String Usuario = resultset.getString (7);
                String Contraseña = resultset.getString (8);
               
                 int  Estado = resultset.getInt (9);
                 
                 int  Edad = resultset.getInt (10);
                return new Usuario( id,Nombre,Apellidos,FechaNac,Correo,Imagen,Usuario, Contraseña,Estado, Edad);
            
            }
        }
             catch (SQLException ex) {
         System.out.println(ex.getMessage());
        }
                  finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    System.out.println(ex.getMessage());
                }
            }
            }
        return null;

}
}