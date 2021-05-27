/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interfaces.UsuarioCRUD;
import Modelos.Usuario;
import java.util.List;
import java.util.ArrayList;
import MySQL.Connector;
import java.sql.ResultSet;
      
/**
 *
 * @author diego
 */
public class UsuarioDAO implements UsuarioCRUD 
{
    Connector connector = new Connector();
    
    public Usuario identificar(Usuario inputUser)
    {
        Usuario user = new Usuario();
        try
        {
            ResultSet rs = connector.getUserByUsername(inputUser.getUsername());
            
            if(rs.next())
            {
                if(rs.getString("pass").equals(inputUser.getPass()))
                {
                    user = resultSetToUsuario(rs);
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }
        catch(Exception e)
        {
            return null;
        }
        return user;
    }
    
    public Usuario buscar(String inputUsername)
    {
        Usuario user = new Usuario();
        try
        {
            ResultSet rs = connector.getUserByUsername(inputUsername);
            if(rs.next())
            {
                user = resultSetToUsuario(rs);
            }
        }
        catch(Exception e)
        {
            return null;
        }
        return user;
    }
    
    @Override
    public List listar() 
    {
        ArrayList<Usuario> users = new ArrayList();
        try
        {
            ResultSet rs = connector.getQuestions();
            while(rs.next())
            {
                users.add(resultSetToUsuario(rs));
            }
        }
        catch(Exception e)
        {
            return null;
        }
        
        return users;
    }

    @Override
    public boolean agregar(Usuario inputUser) 
    {
        try
        {
            connector.InsertUser(inputUser.getUsername(), inputUser.getPass(), inputUser.getFirstName(), inputUser.getLastName(), inputUser.getBirthday(), inputUser.getEmail(), inputUser.getProfileImg());
            return true;
        }
        catch(Exception e)
        {
            return false;
        }
    }

    @Override
    public boolean editar(String userToUpdate, Usuario inputUser) 
    {
        try
        {
            connector.updateUser(userToUpdate, inputUser.getUsername(), inputUser.getPass(), inputUser.getFirstName(), inputUser.getLastName(), inputUser.getBirthday(), inputUser.getEmail(), inputUser.getProfileImg());
            return true;
        }
        catch(Exception e)
        {
            return false;
        }
    }

    @Override
    public void eliminar(String username) 
    {
        try
        {
            connector.DeleteUser(username);
        }
        catch(Exception e)
        {}
    }
    
    public Usuario resultSetToUsuario(ResultSet rs)
    {
        Usuario user = new Usuario();
        try
        {
            user.setId(rs.getInt("pk_user"));
            user.setUsername(rs.getString("username"));
            user.setPass(rs.getString("pass"));
            user.setFirstName(rs.getString("firstName"));
            user.setLastName(rs.getString("lastName"));
            user.setBirthday(rs.getString("birthday"));
            user.setEmail(rs.getString("email"));
            user.setProfileImg(rs.getString("profileImg"));
        }
        catch(Exception e)
        {
            return null;
        }
        return user;
    }
    
}
