/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelos.Usuario;
import DAO.UsuarioDAO;
import com.google.gson.Gson;
import java.util.HashMap;

import DBConector.Connection;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;
/**
 *
 * @author diego
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        
        HashMap resultado = new HashMap();
        
        String username = request.getParameter("user");
        String pass = request.getParameter("password");
        
        Usuario user = new Usuario(username, pass);
        
        UsuarioDAO userDAO = new UsuarioDAO();
        
        user = userDAO.identificar(user);
        
        String json;
        if(user != null)
        {
            resultado.put("Usuario", user);
            resultado.put("Respuesta", true);
            
            HttpSession session = request.getSession();
            session.setAttribute("loggedUser", username);
        }
        else
        {
            resultado.put("Respuesta", false);
        }
        
        json = new Gson().toJson(resultado);
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }

}
