<%-- 
    Document   : IniciarSesion
    Created on : May 21, 2021, 3:21:02 PM
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
    <title>LOGIN</title>


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
            <div class="col m-2 text-white w-75 bg mt-5 rounded shadow">

                <h1 class="fw-bold text-center mt-5"> LOGIN </h1>
               


                <!-- #login-->


                <form action="#">
                    <div class="fw-bold mb-5 text-center">
                        <h2>__________________</h2>
                    </div>
                    <div class="mb-4">
                        <label for="email" class="form-label"> Nombre de Usuario</label>
                        <input type="email" class="form-control"  name="email">
                    </div>

                    <div class="mb-4">
                        <label for="password" class="form-label"> password</label>
                        <input type="password" class="form-control"  name="password">
                    </div>

                    <div class="mb-4 form-check">
                        <input type="checkbox" name="conecter" class="form-check-input"  id="">
                        <label for="conected" class="form-check-label">Mantenerme conectado</label>
                    </div>


                    <div class="d-grid p-5">
                        <button type="submit" class="btn btn-danger" onclick="location.href='index.jsp';" >Login</button>
                        
                       
                    </div>
                 
                     <div class="d-grid p-5">
                    <a href="#" class="link-primary" onclick="location.href='Principal.jsp';">Registrarse</a>
                    </div>
                    
                    
                </form>


                
            </div>
            <div class="col d-none d-md-block col-xl-4 col-md-2 col-sm-1"></div>
        </div>
    </div>
      





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>