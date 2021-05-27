package DBConector;

import java.sql.*;
import java.sql.ResultSet;

/**
 *
 * @author diego
 */
public class Connection {

    ResultSet rs = null;

    String serverName = "localhotst";
    String dbName = "PWPJ_DB";
    String url = "jdbc:mysql://" + serverName + "/" + dbName + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public Connection getConnection() {
        String username = "root";
        String password = "root";
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            System.out.print("Conexion exitosa!");
            return con;
        } catch (Exception ex) {
            con = null;
        }
        return con;
    }

    public ResultSet CreateUser(String Nombre, String Apellidos, String FNac, String Correo, String Img, String NUser, String Password, String FReg) {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL CrearUsuario_SP(" + Nombre + "," + Apellidos + "," + FNac + "," + Correo + "," + Img + "," + NUser + "," + Password + "," + FReg + ")");
        } catch (Exception ex) {
        }
        return null;
    }

    public ResultSet AskQuestion(String Titulo,String Categoria,String Descripcion,String ImgPreg,String FCrea,StringAutor) 
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL Preguntar_SP(" + Titulo + "," + Categoria + "," + Descripcion + "," + ImgPreg + "," + FCrea + "," + StringAutor+")");
        } 
        catch (Exception ex) {}
        return null;
    }
    
    public ResultSet Answer(String Respuesta, String ImgResp, String Autor, String Pregunta) 
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL Rsponder_SP(" + Respuesta + "," + ImgResp + "," + Autor + "," + Pregunta+")");
        } catch (Exception ex) {
        }
        return null;
    }
    public ResultSet GetQuestions() 
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetQuestions_SP()");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet GetAnswers()
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetAnswers_SP()");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet AddCateg(String Categorie)
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL AgregCat_SP()");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet GetCateg()
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetCategories_SP()");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet GetQuestByID(String QID)
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetQuestByID_SP("+QID+")");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet GetAnswerByID(String AID)
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetAnswerByID_SP("+AID+")");
        } catch (Exception ex) {
        }
        return null;
    }
    
    public ResultSet GetUserByID(String UID)
    {
        try {
            Statement st = getConnection().createStatement();
            return st.executeQuery("CALL GetUserByID_SP("+UID+")");
        } catch (Exception ex) {
        }
        return null;
    }
    
}
