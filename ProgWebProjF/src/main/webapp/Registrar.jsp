<%-- 
    Document   : Registrar
    Created on : 10/10/2021, 10:54:16 PM
    Author     : diego
--%>
<%@page import = "java.util.List" %>
<%@page import = "Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    
        <title>Stickybook</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="js/libs/jquery-2.1.4.min.js"></script>	
        <script type="text/javascript" src="js/RegistrarScrpt.js"></script>
    
    <body>
        <div class="navbarC">Stickybook</div>
        <div class="Centerbox">
            <div class="formBox">
                <form>
                    <div class="form-group">
                      <label for="RegNombreL">Nombre(s)</label>
                      <input type="text" class="form-control" id="RegNombre" >
                    </div>
                     <div class="form-group">
                      <label for="RegApellidosL">Apellidos</label>
                      <input type="text" class="form-control" id="RegApellidos">
                    </div>
                     <div class="form-group">
                      <label for="RegFecNacL">Fecha de nacimiento</label>
                      <input type="date" class="form-control" id="RegFecNac" >
                    </div>
                     <div class="form-group">
                      <label for="RegEmailL">Correo electronico</label>
                      <input type="email" class="form-control" id="RegEmail" >
                    </div>
                    <div class="form-group">
                      <label for="RegNUserL">Nombre de usuario</label>
                      <input type="text" class="form-control" id="RegNUser">
                    </div>
                    <div class="form-group">
                      <label for="RegPassL">Contraseña</label>
                      <input type="password" class="form-control" id="RegPass">
                    </div>
                    <div class="form-group">
                      <label for="RegPImgL">Imagen de perfil</label>
                      <input type="file" class="form-control" id="RegPImg" >
                    </div>
                    <button type="submit" class="btn btn-primary" id="regBtn">Registrar</button>
                        
                </form>
            </div>
        </div>
    </body>
</html>
