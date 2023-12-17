<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <!-- estilos CSS -->
    <link rel="stylesheet" href="css/estilos.css">
</head>

<body>
    <div class="container-fluid">
        <!-- MENU - barra de navegacion --------------------------------------------------------------- -->
        <nav class="navbar navbar-expand-lg navbar-light d-flex" style="background-color:rgb(70,70,70);">
            <div class="container-fluid">
                <a class="navbar-brand" href="" style="color:white"><img src="imagenes/codoacodo.png" alt=""
                        height="50">Conf
                    BsAs</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse flex-row-reverse" id="navbarSupportedContent">
                    <div class="navbar-nav">
                        <a class="nav-link" href="#" style="color:white">La conferencia</a>
                        <a class="nav-link" href="#oradores" style="color:silver">Los oradores</a>
                        <a class="nav-link" href="#lugar" style="color:silver">El lugar y la fecha</a>
                        <a class="nav-link" href="#conviertete" style="color:silver">Conviertete en orador</a>
                        <a class="nav-link" href="FrontController?accion=comprarticket" style="color:darkseagreen">Comprar tickets</a>
                        <a class="nav-link" href="FrontController?accion=backoffice" style="color:yellow">Back office</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- carousel ----------------------------------------------------------------------------------------------------------- -->
        <div id="carouselExample" class="carousel slide bg-dark">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imagenes/ba1.jpg" class="d-block w-100" alt="..." style="opacity: 0.5;">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/ba2.jpg" class="d-block w-100" alt="..." style="opacity: 0.5;">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/ba3.jpg" class="d-block w-100" alt="..." style="opacity: 0.5;">
                </div>
            </div>

            <div class="card-img-overlay">
                <div class="row">
                    <div class="col-6"></div>
                    <div class="col-6">
                        <div class="card-body">
                            <h1 class="card-title text-white">Conf Bs As</h1>
                            <p class="card-text text-white">Bs As llega por primera vez a Argentina. Un evento para
                                compartir con nuestra
                                comunidad el conocimiento y experiencia de los expertos que estan creando el futuro de
                                Internet.
                                Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores
                                de primer
                                nivel que tenemos para ti. Te esperamos!</p>
                            <!-- <button type="button" class="btn btn-outline-light">Quiero ser orador</button> -->
                            <a href="#conviertete" class="btn btn-outline-light">Quiero ser orador</a>
                            <!-- <button type="button" class="btn btn-secondary btn-success">Comprar tickets</button> -->
                            <a href="tickets.html" class="btn btn-secondary btn-success">Comprar tickets</a>
                        </div>
                    </div>
                </div>
            </div>


            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


        <!-- parrafos ------------------------------------------------------------------------------------ -->
        <div class="row justify-content-md-center" id="oradores">
            <div class="col"></div>
            <div class="col-md-auto">
                <p><small>CONOCE A LOS</small></p>
            </div>
            <div class="col"></div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col"></div>
            <div class="col-md-auto">
                <h3>ORADORES</h3>
            </div>
            <div class="col"></div>
        </div>

        <!-- CARD oradores ------------------------------------------------------------------------------ -->
        <div class="card-group">
            <div class="card">
                <img src="imagenes/steve.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <img src="logosCard1.jpg" alt="" height="25">
                    <div class="d-grid gap-2 d-md-block">
                        <button class="btn btn-warning btn-sm fw-bold" type="button"
                            id="botonOradores">JavaScript</button>
                        <button class="btn btn-info btn-sm text-white fw-bold" type="button"
                            id="botonOradores">React</button>
                    </div>
                    <h5 class="card-title">Steve Jobs</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam sit
                        nostrum
                        explicabo similique. Quidem adipisci mollitia tempore unde dolorem reprehenderit dicta
                        temporibus ipsam minus itaque! Quo ab nam nobis officia?</p>
                </div>
            </div>
            <div class="card">
                <img src="imagenes/bill.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <img src="logosCard1.jpg" alt="" height="25">
                    <div class="d-grid gap-2 d-md-block">
                        <button class="btn btn-warning btn-sm fw-bold" type="button"
                            id="botonOradores">JavaScript</button>
                        <button class="btn btn-info btn-sm text-white fw-bold" type="button"
                            id="botonOradores">React</button>
                    </div>
                    <h5 class="card-title">Bill Gates</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam sit
                        nostrum
                        explicabo similique. Quidem adipisci mollitia tempore unde dolorem reprehenderit dicta
                        temporibus ipsam minus itaque! Quo ab nam nobis officia?</p>
                </div>
            </div>
            <div class="card">
                <img src="imagenes/ada.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <img src="logosCard2.jpg" alt="" height="25">
                    <div class="d-grid gap-2 d-md-block">
                        <button class="btn btn-secondary btn-sm text-white fw-bold" type="button"
                            id="botonOradores">Negocios</button>
                        <button class="btn btn-danger btn-sm text-white fw-bold" type="button"
                            id="botonOradores">Startups</button>
                    </div>
                    <h5 class="card-title">Ada Lovelace</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam sit
                        nostrum
                        explicabo similique. Quidem adipisci mollitia tempore unde dolorem reprehenderit dicta
                        temporibus ipsam minus itaque! Quo ab nam nobis officia?</p>
                </div>
            </div>
        </div>

        <br>

        <!-- Imagenes apareadas -------------------------------------------------------------------------- -->
        <div class="row" id="lugar">
            <div class="col">
                <img src="imagenes/honolulu.jpg" class="card-img" alt="...">
            </div>
            <div class="col" style="background-color: black; color: white;">
                <h4>Bs As Octubre</h4>
                <p><small>Buenos Aires es la provincia y localidad mas grande del estado de Argentina, en los Estados
                        Unidos. Honolulu es la mas sureña de entre las principales ciudades estadounidenses. Aunque el
                        nombre de Honolulu se refiere al area urbana en la costa sureste de la isla de Oahu, la ciudad y
                        el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad
                        (aproximadamente 600 km2 de superficie).</small></p>
                <button type="button" class="btn btn-dark btn-outline-light">Conoce más</button>
            </div>
        </div>

        <!-- parrafos ------------------------------------------------------------------------------------- -->
        <br>
        <div class="row justify-content-md-center" id="conviertete">
            <div class="col"></div>
            <div class="col-md-auto">
                <h6>CONVIERTETE EN UN</h6>
            </div>
            <div class="col"></div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col"></div>
            <div class="col-md-auto">
                <h1>ORADOR</h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col"></div>
            <div class="col-md-auto">
                <h6>Anotate como orador para dar una <u>charla ignite</u>. Cuentanos de que quieres hablar!</h6>
            </div>
            <div class="col"></div>
        </div>

        <!-- formulario --------------------------------------------------------------------------------- -->
        <form action="">
            <div class="row justify-content-md-center">
                <div class="col"></div>
                <div class="col">
                    <input class="form-control" type="text" placeholder="Nombre" aria-label="default input example">
                </div>
                <div class="col">
                    <input class="form-control" type="text" placeholder="Apellido" aria-label="default input example">
                </div>
                <div class="col"></div>
            </div>
            <br>
            <div class="row justify-content-md-center">
                <div class="col"></div>
                <div class="col-6">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                        placeholder="Sobre que quieres hablar?"></textarea>
                </div>
                <div class="col"></div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col"></div>
                <div class="col-6">
                    <p><small>Recuerda incluir un titulo para tu charla</small></p>
                </div>
                <div class="col"></div>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button class="btn btn-success" type="button" id="botonEnviar">Enviar</button>
            </div>
        </form>
        <br>

        <!-- footer ------------------------------------------------------------------------------------- -->
        <footer>
            <nav class="row justify-content-md-evenly" style="background-color:rgb(25, 7, 90);">

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

            </nav>
        </footer>

        <!-- Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>


    </div>
</body>

</html>