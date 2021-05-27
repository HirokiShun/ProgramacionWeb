<%-- 
    Document   : Usuario
    Created on : May 21, 2021, 3:22:02 PM
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
            background-color: #261C3E ;
        }

        .bg2{
            background-color: #c0c9d8;
        }

        .bg3{
            background-color: #131313;
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
            <h2 class="fw-bold text-center mt-2"> Nombre de Usuario </h2>
        </form>
        </div>


        <div class="col-auto ms-auto mt-2 " >
 
            <img src="img/perfil.png" alt="" width="70" class="img-thumbnail">
           
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
            <button class="btn btn-outline-info" type="submit" onclick="location.href='GenerarPregunta.jsp';"> Paublicar Pregunta</button>
                
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
        <div class="row align-items-stretch">
            <div class="col text-center  mt-5 m-2 col-xl-4 col-md-4 col-sm-5 col-xs-5">
             
                <img src="img/perfil.png" alt="" width="300" class="img-thumbnail mx-auto d-block">

                <h3 class="fw-bold text-center mt-3"> Nombre de Usuario </h3>
                <h3 class="fw-bold text-center mt-3"> Fecha de Nacimiento </h3>
                <h3 class="fw-bold text-center mt-3"> Correo </h3>


                <button class="btn btn-success" type="submit">Editar Perfil</button>
            </div>
    
    
            <div class="col p-3 text-white w-75 bg m-3 rounded shadow">
    
               
               
    
    
                <!-- #login-->
    
    
                <div class="card text-center">
                    <div class="card-header">
                      <ul class="nav nav-tabs card-header-tabs text-primary">
                        <li class="nav-item">
                          <a class="nav-link active" href="#TabPreguntas" role="tab" data-bs-toggle="tab">Preguntas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#TabRespuestas" role="tab" data-bs-toggle="tab">Respuestas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#TabFavoritos" role="tab" data-bs-toggle="tab">Favoritos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#TabUtiles" role="tab" data-bs-toggle="tab">Utiles</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#TabNoutiles" role="tab" data-bs-toggle="tab">No Utiles</a>
                        </li>

                      </ul>

                      <div class="tab-content">
                          <div role="tabpanel" class="tab-pane fade "  id="TabPreguntas"> 
                            <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/amber.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Pregunta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Pregunta</button>
                                </div>
                              </div>
                              <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/amber.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Pregunta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Pregunta</button>
                                </div>
                              </div>

                              <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/amber.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Pregunta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Pregunta</button>
                                </div>
                              </div>

                             <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/amber.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Pregunta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Pregunta</button>
                                </div>
                              </div>
                              
                          </div>
                          <div role="tabpanel" class="tab-pane fade "  id="TabRespuestas"> 
                            <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/piper.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                        <p class="card-text text-danger"> Respuesta  </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Respuesta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Respuesta</button>
                                </div>
                              </div>

                              <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/piper.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                        <p class="card-text text-danger"> Respuesta  </p>
                                  <a href="#" class="btn btn-primary m-2">Ir a La Pregunta</a><br>
                                  <button type="button" class="btn btn-danger">Editar Respuesta</button>
                                  <button type="button" class="btn btn-danger">Eliminar Respuesta</button>
                                </div>
                              </div>
                              
                          </div>
                          <div role="tabpanel" class="tab-pane fade " id="TabFavoritos"> 
                            <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/tara.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary">Ir a La Pregunta</a>
                                </div>
                              </div>

                              <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top mb-2" src="img/tara.png" alt="Card image cap">
                                        <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                                        <p class="card-text text-dark"> Categoria de la Pregunta </p>
                                  <a href="#" class="btn btn-primary">Ir a La Pregunta</a>
                                </div>
                              </div>

                          </div>
                          <div role="tabpanel" class="tab-pane  fade"  id="TabUtiles">    
                              <div class="card d-inline-flex m-3 " style="width: 23rem;">
                            <div class="card-body ">
                                    <img class="card-img-top mb-2" src="img/bibi.png" alt="Card image cap">
                              <h5 class="card-title text-dark"> Titulo Pregunta </h5>
                              <p class="card-text text-dark"> Categoria de la Pregunta </p>
                              <a href="#" class="btn btn-primary">Ir a La Pregunta</a>
                            </div>
                          </div>
                        </div>
                          <div role="tabpanel" class="tab-pane  fade "  id="TabNoutiles"> 
                            <div class="card d-inline-flex m-3 " style="width: 23rem;">
                                <div class="card-body ">
                                        <img class="card-img-top" src="img/nita.jpg" alt="Card image cap">
                                  <h5 class="card-title">Special title treatment</h5>
                                  <p class="card-text text-primary">Titulo de la Pregunta </p>
                                  <a href="#" class="btn btn-primary">Ir a La Pregunta</a>
                                </div>
                              </div>
                          </div>

                      </div>
                    </div>
                    <!--div class="card-body">
                      <h5 class="card-title">Special title treatment</h5>
                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                      <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div-->
                  </div>
    
                
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