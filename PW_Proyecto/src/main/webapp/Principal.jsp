<%-- 
    Document   : Principal
    Created on : May 21, 2021, 3:21:33 PM
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilos.css">
    <title>Registro</title>


    <style>
        body{
            background: #C6C6C9 ;
            background: linear-gradient(to right,#DEDEE1 , #C6C6C9);
        }

        .bg{
            background-color: #47456E ;
        }
    </style>
</head>
<body>
    <div class="container ">
        <div class="row align-items-stretch">
            <div class="col d-none d-md-block col-xl-4 col-md-2 col-sm-1"></div>
            <div class="col m-2 text-white w-75 bg mt-3 rounded shadow">

                <h1 class="fw-bold text-center mt-5"> Registrarse </h1>
               


                <!-- #login-->

                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-row">
                        <div class="form-group mt-2">
                            <label for="inputAddress">Nombre</label>
                            <input type="text" class="form-control" id="inputAddress" name="Nombre" required >
                          </div>
                          <div class="form-group mt-2">
                            <label for="inputAddress">Apellido</label>
                            <input type="text" class="form-control" id="inputAddress" name="Apellido" required >
                          </div>
                      <div class="form-group col-md-6 mt-2">
                        <label for="inputEmail">Email</label>
                        <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="Email" required >
                      </div>
                      <div class="form-group col-md-6 mt-2">
                        <label for="inputPassword1">Contraseña</label>
                        <input type="password" class="form-control" id="inputPassword1" placeholder="Password" name="Contraseña" required >
                      </div>
                      <div class="form-group col-md-6 mt-2">
                        <label for="inputPassword2">Confirmar Contraseña</label>
                        <input type="password" class="form-control" id="inputPassword2" placeholder="Password" name="confirContraseña" required >
                      </div>
                    </div>
                    <div class="form-group mt-2">
                      <label for="inputAddress">Nombre de Usuario</label>
                      <input type="text" class="form-control" id="inputAddress" name="NombreUsuario" required >
                    </div>

                    <div class="form-group mt-2">
                        <label for="inputAddress">Fecha de Nacimiento</label>
                        <input type="date" class="form-control" id="inputAddress" name="FechaNac"  required >
                      </div>

                        <div class="form-group mt-3">
                          <label for="exampleFormControlFile1">Imagen de Perfil</label><br>
                          <input type="file" class="form-control-file" id="exampleFormControlFile1" name="IMGPerfil" > 
                        </div>

                       
                      
                    
                    <div class="d-grid py-3">
                        <button type="submit" class="btn btn-danger" onclick="location.href='index.jsp';">Login</button>
                    </div>
                    
                    
                    
                     <div class="d-grid p-5">
                    <a href="#" class="link-primary" onclick="location.href='IniciarSesion.jsp';">Iniciar Session</a>
                    </div> 
                    
                  </form>



                  
                </form>


                
            </div>
            <div class="col d-none d-md-block col-xl-4 col-md-2 col-sm-1"></div>
        </div>
    </div>
      





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>