/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author diego
 */
import Interfaces.RespuestaCRUD;
import java.util.List;
import java.util.ArrayList;

import DAO.RespuestaDAO;
import Modelos.Respuesta;

import MySQL.Connector;
import java.sql.ResultSet;

public class RespuestaDAO implements RespuestaCRUD
{
    Connector connector = new Connector();
    @Override
    public List listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList<Respuesta> buscar(String inputIdQuestion)
    {
        try
        {
            ArrayList<Respuesta> respuesta = new ArrayList<Respuesta>();
            ResultSet rs = connector.getAnswersByQuestion(inputIdQuestion);
            while(rs.next())
            {
                respuesta.add(resultSetToRespuesta(rs));
            }
            return respuesta;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public Respuesta buscarByID(String idAnswer)
    {
        Respuesta respuesta = new Respuesta();
        try
        {
            ResultSet rs = connector.GetAnswerByID(idAnswer);
            if(rs.next())
            {
                respuesta = resultSetToRespuesta(rs);
            }
        }
        catch(Exception e)
        {
                
        }
        return respuesta;
    }

    @Override
    public void agregar(Respuesta inputAnswer) {
        try
        {
            connector.InsertAnswer(inputAnswer.getAuthor(), inputAnswer.getIdQuestion(), inputAnswer.getImage(), inputAnswer.getContent());
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void editar(Respuesta inputUser) {
        connector.UpdateAnswer(inputUser.getId(), inputUser.getContent(), inputUser.getImage());
    }

    @Override
    public void eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int IsAnswerMarked(String username, String IDAnswer)
    {
        //Answer 1 = true, 2 = false, 3 = not found
        int answer = 0;
        try
        {
            ResultSet rs = connector.IsAnswerFoundUseful(username, IDAnswer);
            if(rs.next())
            {
                boolean rsValue = rs.getBoolean("isUseful");
                if(rsValue)
                {
                    answer = 1;
                }
                else
                {
                    answer = 2;
                }
            }
            else
            {
                answer = 3;
            }
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return answer;
    }
    
    public void MarkAnswer(String userID, String answerID, String usefulness)
    {
        try
        {
            connector.MarkAnswerUsefulness(userID, answerID, usefulness);
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }
    
    public void DeleteUserAnswer(String idUser, String idRespuesta)
    {
        try
        {
            connector.DeleteUserAnswer(idUser, idRespuesta);
        }
        catch(Exception e)
        {}
    }
    
    public void SetRightAnswer(String idAnswer, String value)
    {
        try
        {
            connector.SetRightAnswer(idAnswer, value);
        }
        catch(Exception e)
        {}
    }
    
    public void DeleteAnswer(String idAnswer)
    {
        try
        {
            connector.DeleteAnswer(idAnswer);
        }
        catch(Exception e)
        {}
    }
    
    public ArrayList<Respuesta> GetUserPublishedAnswers(String username)
    {
        ArrayList<Respuesta> respuesta = new ArrayList<Respuesta>();
        try
        {
            ResultSet rs = connector.GetUserPublishedAnswers(username);
            while(rs.next())
            {
                respuesta.add(resultSetToRespuesta(rs));
            }
            return respuesta;
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    private Respuesta resultSetToRespuesta(ResultSet rs)
    {
        try
        {
            Respuesta respuesta = new Respuesta();
            respuesta.setId(rs.getString("pk_answer"));
            respuesta.setAuthor(rs.getString("username"));
            respuesta.setIdQuestion(rs.getString("fk_question"));
            respuesta.setContent(rs.getString("content"));
            respuesta.setImage(rs.getString("image"));
            respuesta.setDate(rs.getString("postDate"));
            respuesta.setIsRightAnswer(rs.getBoolean("rightAnswer"));
            return respuesta;
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
}
