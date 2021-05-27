<%-- 
    Document   : index
    Created on : May 21, 2021, 3:19:05 PM
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
    <title>PerfildeUsuario</title>


    <style>
         .body{
            background: #8D8D8D ;
            background: linear-gradient(to right,#434343 , #8D8D8D);
        }
        .bg{
            background-color: #261C3E   ;
        }

        .bg2{
            background-color: #ABA4BA  ;
        }

        .bg3{
            background-color: #131313;
        }

        .bg4{
            background-color: #513b6d ;
        } 

        .bg5{
            background-color: #362757 ;
        } 
    </style>
</head>
<body>


    <nav class="navbar-fluid sticky-top navbar-expand-md navbar-dark bg">
        <div class="container-fluid">
            <div class="row">
                <div class="col mt-1 " >
         
            <img src="img/logo.png" alt="" width="50">
        </div>
        <div class="col-auto  ms-auto mt-2 " >
            <h2 class="fw-bold text-center  text-white mt-2"> Nombre de Usuario </h2>
        </form>
        </div>


        <div class="col-auto ms-auto mt-2 " >
 
            <img src="img/perfil.png" alt="" width="70" class="img-thumbnail">
            <button class="btn btn-outline-info" type="submit" onclick="location.href='Usuario.jsp';"> Perfil Usuario</button>
           
        </div>
            </div>
        </a>
        <div class="row">
            <div class="col mt-2" >
                <input type="password" class="form-control" id="Buscador" placeholder="Buscar">
            </div>
            <div class="col-auto mt-2">
                <button class="btn btn-success " type="submit">Buscar</button>
              
            </div>

            <div class="col-auto ms-auto mt-2 ">
            
                <button class="btn btn-outline-info" type="submit" onclick="location.href='GenerarPregunta.jsp';">Publicar Pregunta</button>
            </div>
            <div class="col-auto ms-auto mt-2 ">
            
              <button class="btn btn-outline-danger" type="submit" onclick="location.href='IniciarSesion.jsp';">Iniciar Sesion</button>
          </div>
          </div>

        

        <button class="navbar-toggler" 
        type="button" 
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toogle navigation">


            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse  navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ">

       <li class="nav-item"><a class="nav-link" href="#">Categoria 1</a></li>
       <li class="nav-item"><a class="nav-link" href="#">Categoria 2</a></li>
       <li class="nav-item"><a class="nav-link" href="#">Categoria 3</a></li>
       <li class="nav-item"><a class="nav-link" href="#">Categoria 4</a></li>
       <li class="nav-item"><a class="nav-link" href="#">Categoria 5</a></li>
       <li class="nav-item"><a class="nav-link" href="#">Categoria 6</a></li>
            </ul>

    
           
              </div>

               
        </div>
     
        </div>
    </nav>




    <div class="container-fluid bg2 ">
        <div class="row  ">
            <div class="col d-none d-md-block col-xl-1 col-md-1 col-sm-1">
             
            </div>
    
    
            <div class="col  p-3 text-white w-75 bg5 m-3 rounded-lg shadow ">   

                <div class="card mx-auto m-5 p-3 rounded shadow-lg" style="width: 60%;">
                    <img class="card-img-top " src="img/rosa.png" alt="Card image cap ">
                    <div class="card-body">
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                 
                      <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/nita.jpg" alt="Card image cap">
                    <div class="card-body">
                   
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                      <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/tara.png" alt="Card image cap">
                    <div class="card-body">
                      
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                      <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/jaky.jpg" alt="Card image cap">
                    <div class="card-body">
                      
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                     <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/collete.png" alt="Card image cap">
                    <div class="card-body">
                      
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                      <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/amber.png" alt="Card image cap">
                    <div class="card-body">
                    
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                    <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/jaky.jpg" alt="Card image cap">
                    <div class="card-body">
                      
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                     <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/bibi.png" alt="Card image cap">
                    <div class="card-body">
                     
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                     <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/perfil.png" alt="Card image cap">
                    <div class="card-body">
                    
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                      <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
                  <div class="card mx-auto m-5 p-3" style="width: 60%;">
                    <img class="card-img-top" src="img/piper.png" alt="Card image cap">
                    <div class="card-body">
                   
                      <h5 class="card-title text-dark">Titulo Noticia</h5>
                      <p class="card-text"><small class="text-muted">Categoria Noticia</small></p>
                      <p class="card-text text-dark">Contenido Noticia</p>
                      
                    <button class="btn btn-outline-info" type="submit" onclick="location.href='PreguntayRespuesta.jsp';"> Ir a La Pregunta</button>
                    </div>
                  </div>
    
                
            </div>

           
            <div class="col d-none d-md-block col-xl-1 col-md-1 col-sm-1">
                
             
            </div>
            
        </div>
    </div>


    <div class="container-fluid bg p-3 ">
        <div class="row">
            <div class="col">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                      <li class="page-item ">
                        <a class="page-link" href="#" tabindex="-1">&laquo;</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">&raquo;</a>
                      </li>
                    </ul>
                  </nav>
            </div>
        </div>
    </div>
  

  

    <!--footer-->

    <footer class="bg3 text-white text-center ">
        <label for="inputAddress ">Categorias:</label>
        <div class="container-fluid ">
            <nav class="row ">
<ul class="col-4 mt-2 list-unstyled">
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 1</button><br>
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 2</button><br>

</ul>
<ul class="col-4 mt-2 list-unstyled">
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 3</button><br>
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 4</button><br>

</ul>
<ul class="col-4 mt-2 list-unstyled">
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 5</button><br>
    <button type="button" class="btn btn-dark mt-2 mb-2">Categoria 6</button><br>

</ul>
            </nav>
        </div>


    </footer>
  


    





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>




