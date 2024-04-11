<?php
require_once "conexao.php";
?>

<!DOCTYPE html>
<html>

<head>
  <title>AutoExpress</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="shortcut icon" type="image/x-icon" href="img/icone.png">

<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1, maximum-scale=1,
user-scalable=no" name="viewport">

</head>
<body>

<section class="vh-100" style="background-color: #151515;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem; background-color: #414141; ">
          <div class="card-body p-5 text-center">
          	
          	<img src="Img/logo.jpg" width="200px" style="margin-bottom: 20px">

          	<form method="post" action="autenticar.php">
            <div class="form-outline mb-4">
            	
              <input name="email" type="email" id="typeEmailX-2" class="form-control" placeholder="Email" required style="border: solid grey 2px;
    border-radius: 5px; background-color:black; color:white " />
              
            </div>

            <div class="form-outline mb-4">
            	  
              <input name="senha" type="password" id="typePasswordX-2" class="form-control " placeholder="Senha" required style="border: solid grey 2px;
    border-radius: 5px; background-color:black; color:white " />
            
            </div>       

            <div id="login" class="d-grid gap-2">
            <button id="login" class="btn btn-primary" type="submit" >Login</button>
    <style>
      #login{
        border: solid black 2px;
    border-radius: 5px; background-color: white; color:black;
      };
      #login:before{
        transition: 0.3s;
        color: white;
        background-color: black;
      };
    </style>
        	</div>

        </form>

            <hr class="my-4">

          <div align ="center"><small><a href="#" data-bs-toggle="modal" data-bs-target="#modalRecuperar">Recuperar Senha</a></small></div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>