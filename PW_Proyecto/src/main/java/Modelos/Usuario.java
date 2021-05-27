/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *
 * @author diego
 */
public class Usuario {
    
    private int id;
    private String username;
    private String pass;
    private String firstName;
    private String lastName;
    private String birthday;
    private String email;
    private String profileImg;

      
    public Usuario() 
    {
    }
    
    public Usuario(String username, String pass) 
    {
        this.username = username;
        this.pass = pass;
    }
    
    public Usuario(String pass, String firstName, String lastName) 
    {
        this.pass = pass;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getId() 
    {
        return id;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public String getUsername() 
    {
        return username;
    }

    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getPass() 
    {
        return pass;
    }

    public void setPass(String pass) 
    {
        this.pass = pass;
    }

    public String getFirstName() 
    {
        return firstName;
    }

    public void setFirstName(String firstName) 
    {
        this.firstName = firstName;
    }

    public String getLastName() 
    {
        return lastName;
    }

    public void setLastName(String lastName) 
    {
        this.lastName = lastName;
    }

    public String getBirthday() 
    {
        return birthday;
    }

    public void setBirthday(String birthday) 
    {
        this.birthday = birthday;
    }

    public String getEmail() 
    {
        return email;
    }

    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getProfileImg() 
    {
        return profileImg;
    }

    public void setProfileImg(String profileImg) 
    {
        this.profileImg = profileImg;
    }
}