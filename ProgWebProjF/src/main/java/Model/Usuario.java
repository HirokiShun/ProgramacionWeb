/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author diego
 */

public class Usuario {
    private int ID;
    private String Nombre;
    private String Apellidos;
    private String DATE;
    private String CorreoElec;
    private String ImgPerfil;
    private String NomUsuario;
    private String Contraseña;
    private int  Estado;
    private int  Edad;

    public Usuario(int ID, String Nombre, String Apellidos, String DATE, String CorreoElec, String ImgPerfil, String NomUsuario, String Contraseña, int Estado, int Edad) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.DATE = DATE;
        this.CorreoElec = CorreoElec;
        this.ImgPerfil = ImgPerfil;
        this.NomUsuario = NomUsuario;
        this.Contraseña = Contraseña;
        this.Estado = Estado;
        this.Edad = Edad;
    }

    public Usuario() {
    }

    public Usuario(String NomUsuario, String Contraseña) {
        this.NomUsuario = NomUsuario;
        this.Contraseña = Contraseña;
    }

    public Usuario(int ID, String Nombre, String Apellidos, String DATE, String CorreoElec, String ImgPerfil, String NomUsuario, String Contraseña, int Estado) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.DATE = DATE;
        this.CorreoElec = CorreoElec;
        this.ImgPerfil = ImgPerfil;
        this.NomUsuario = NomUsuario;
        this.Contraseña = Contraseña;
         this.Estado = Estado;
        
   
    }
    

    public Usuario( String Nombre, String Apellidos, String DATE, String CorreoElec, String ImgPerfil, String NomUsuario, String Contraseña) {
        
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.DATE = DATE;
        this.CorreoElec = CorreoElec;
        this.ImgPerfil = ImgPerfil;
        this.NomUsuario = NomUsuario;
        this.Contraseña = Contraseña;
      
    }


    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }
        

    public String getDATE() {
        return DATE;
    }

    public void setDATE(String DATE) {
        this.DATE = DATE;
    }

    public String getCorreoElec() {
        return CorreoElec;
    }

    public void setCorreoElec(String CorreoElec) {
        this.CorreoElec = CorreoElec;
    }

    public String getImgPerfil() {
        return ImgPerfil;
    }

    public void setImgPerfil(String ImgPerfil) {
        this.ImgPerfil = ImgPerfil;
    }

    public String getNomUsuario() {
        return NomUsuario;
    }

    public void setNomUsuario(String NomUsuario) {
        this.NomUsuario = NomUsuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

  
    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

   
   
    
}
