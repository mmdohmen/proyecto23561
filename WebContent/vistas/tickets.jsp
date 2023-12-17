<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As - tickets</title>
    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- archivo de estilos -->
    <link rel="stylesheet" href="css/tickets.css">
</head>

<body>
    <div class="">

        <!-- barra de navegacion -------------------------------------------------------------------------------->
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: rgb(70,70,70);">
            <div class="container-fluid">
                <a class="navbar-brand" href="FrontController?action=null">Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse flex-row-reverse" id="navbarSupportedContent">
                    <div class="navbar-nav">
                        <a class="nav-link" href="FrontController" style="color:silver">La conferencia</a>
                        <a class="nav-link" href="FrontController#oradores" style="color:silver">Los oradores</a>
                        <a class="nav-link" href="FrontController#lugar" style="color:silver">El lugar y la fecha</a>
                        <a class="nav-link" href="FrontController#conviertete" style="color:silver">Conviertete en orador</a>
                        <a class="nav-link" href="#" style="color:lightgreen">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </nav>


        <!-- categorias ----------------------------------------------------------------------------------------->
        <div class="card-group">
            <div class="card" id="card1">
                <div class="card-body">
                    <h5 class="card-title">Estudiante</h5>
                    <p class="card-text">Tiene un descuento</p>
                    <h5 class="card-title">80%</h5>
                    <p class="card-text"><small>* presentar documentacion</small></p>
                </div>
            </div>
            <div class="card" id="card2">
                <div class="card-body">
                    <h5 class="card-title">Trainee</h5>
                    <p class="card-text">Tiene un descuento</p>
                    <h5 class="card-title">50%</h5>
                    <p class="card-text"><small>* presentar documentacion</small></p>
                </div>
            </div>
            <div class="card" id="card3">
                <div class="card-body">
                    <h5 class="card-title">Junior</h5>
                    <p class="card-text">Tiene un descuento</p>
                    <h5 class="card-title">15%</h5>
                    <p class="card-text"><small>* presentar documentacion</small></p>
                </div>
            </div>
        </div>


        <!-- textos -------------------------------------------------------------------------------------------->
        <br>
        <div class="textos">
            <p>VENTA</p>
            <h1>VALOR DEL TICKET $200</h1>
        </div>


        <!-- formulario --------------------------------------------------------------------------------------->
        <form class="container" name="formulario" action="FrontController?accion=comprar" method="post">
            <div class="row">
                <div class="col-6">
                    <input type="text" class="form-control" id="inputEmail4" placeholder="Nombre" name="nombre">
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" id="inputPassword4" placeholder="Apellido" name="apellido">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-12">
                    <input type="email" class="form-control" id="inputPassword4" placeholder="Correo" name="mail">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label for="inputCantidad" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="inputCantidad" placeholder="Cantidad" value="1" name="cant">
                </div>
                <div class="col">
                    <label for="inputCantidad" class="form-label">Categoria</label>
                    <select class="form-select" id="inputCategoria" name="tipo">
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                    </select>
                </div>
            </div>
            <br>
            <div class="col-12">
                <input type="text" class="form-control" name="total" placeholder="Total a Pagar $" readonly
                    style="background-color: lightblue" id="total">
            </div>
            <br>
            <div class="row gap-2">
                <button type="reset" class="btn btn-secondary col">Borrar</button>
                <button type="submit" class="btn btn-danger col" onclick="calcular()">Comprar</button>
                
            </div>
            <br>
        </form>


        <!-- footer -------------------------------------------------------------------------------------------->
        <footer>
            <nav class="row justify-content-md-center" style="background-color:rgb(25, 16, 70);">
                <div class="col"></div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Preguntas frecuentes</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Contactanos</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Prensa</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Conferencias</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Terminos y condiciones</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Privacidad</a>
                </div>
                <div class="col">
                    <a class="nav-link" href="#" style="color:white">Estudiantes</a>
                </div>
                <div class="col"></div>
            </nav>
        </footer>


        <!-- BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

        <!-- tickets -->
        <script src="js/tickets.js"></script>

    </div>
</body>

</html>