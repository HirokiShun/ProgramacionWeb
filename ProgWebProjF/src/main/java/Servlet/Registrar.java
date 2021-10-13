/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import DAO.UsuarioDAO;
import Model.Usuario;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author diego
 */
@WebServlet(name = "Registrar", urlPatterns = {"/Registrar"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 25)
public class Registrar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String NOM = request.getParameter("Nombre");
        String APLL = request.getParameter("Apellido");
        String EML = request.getParameter("Email");
        String CON = request.getParameter("c");
        String NOUS = request.getParameter("NombreUsuario");
        String FN = request.getParameter("FechaNac");
        Part IMGP = request.getPart("IMGPerfil");
        String path = request.getServletContext().getRealPath("");
        
        try{
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parserequest(request);
            
            for(FileItem item : items){
                    if(item.isFormField()){
                        String llave = item.getFieldName();
                        String valor = item.getString();
                    }
                    else{
                        String fieldName = item.getFieldName();
                        String contentType = item.getContentType();
                        boolean isInMemory = item.isInMemory();
                        long sizeInBytes = item.getSize();
                        String fileName = item.getName();
                        
                        InputStream stream = item.getInputStream();
                        byte[] data = stream.readAllBytes();
                        stream.close();
                        
                        fileName = System.currentTimeMillis()+fileName;
                        File file = new File("C:/JAVA/UPLOADS/"+fileName);
                        
                        FileOutputStream out = new FileOutputStream(file);
                        out.write(data);
                        out.close();
                    }
            }
        }
        catch(IOException | FileUploadException ex){
            throw new ServletException(ex.toString());
            
        }
        Usuario User = new Usuario (NOM,APLL,FN,EML,null,NOUS,CON);
        
        UsuarioDAO.RegistrarUsuario(User);
        
        request.getRequestDispatcher("LoginCont").forward(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
