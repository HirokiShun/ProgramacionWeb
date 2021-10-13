<%-- 
    Document   : Login
    Created on : 10/10/2021, 10:53:15 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Stickybook</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">
         <link rel="stylesheet" type="text/css" href="css/style.css">
         <script type="text/javascript" src="js/libs/jquery-2.1.4.min.js"></script>
         <script type="text/javascript" src="js/Login.js"></script>
    </head>
    <body>
        <div class="navbarC">Stickybook</div>
        <div class="Centerbox">
            <div class="formBox">
                <form>
                    <div class="form-group">
                      <label for="logUserL">Nombre de usuario</label>
                      <input type="text" class="form-control" id="logUser">
                    </div>
                    <div class="form-group">
                      <label for="logPassL">Contraseña</label>
                      <input type="password" class="form-control" id="logPass">
                    </div>
                    <div class="form-group form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Recordar</label>
                    </div>
                    <button id="logBtn" class="btn btn-primary">Acceder</button>
                 </form>
            </div>
        </div>
        
    </body>
</html>
