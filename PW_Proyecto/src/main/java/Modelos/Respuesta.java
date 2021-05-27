/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *
 * @author diego
 * */
public class Respuesta 
{
    private String id;
    private String author;
    private String idQuestion;
    private String idParentAnswer;
    private String content;
    private String image;
    private String date;
    private boolean isRightAnswer;

    public Respuesta() 
    {
    }

    public Respuesta(String author, String content) 
    {
        this.author = author;
        this.content = content;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(String idQuestion) {
        this.idQuestion = idQuestion;
    }

    public String getIdParentAnswer() {
        return idParentAnswer;
    }

    public void setIdParentAnswer(String idParentAnswer) {
        this.idParentAnswer = idParentAnswer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public boolean isIsRightAnswer() {
        return isRightAnswer;
    }

    public void setIsRightAnswer(boolean isRightAnswer) {
        this.isRightAnswer = isRightAnswer;
    }    
}

