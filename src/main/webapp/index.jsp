<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Web Hotel</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
  <script src="js/motor.js"></script>
</head>
<body id="inicio" class="bg-color-header">

<header class="container text-center">
    <nav class="navbar navbar-expand-lg" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="images/hotel.png" alt="Logo"  class="d-inline-block align-text-top">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-color-header active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-color-header" href="#">Hoteles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-color-header" href="#">Servicios</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>

    <!-- Seccion 1 - Slide -->
    <section class="container text-center">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/slider1.jpg" class=" mw-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/slider2.jpg" class="mw-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/slider3.jpg" class="mw-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/slider4.jpg" class="mw-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!-- Seccion Cards Hoteles -->
    <section class="container text-center d-flex flex-wrap">
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                <img id="h01" name="hot" src="images/hotel01.jpg" class="mw-100 hot" >
            </div>
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                <img id="h02" name="hot" src="images/hotel02.png" class="mw-100 hot" >
            </div>
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                <img id="h03" name="hot" src="images/hotel03.png" class="mw-100 hot" >
            </div>
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                <img id="h04" name="hot" src="images/hotel01.jpg" class="mw-100 hot" >
            </div>
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                    <img id="h05" name="hot" src="images/hotel02.png" class="mw-100 hot" >
            </div>
            <div class="col-12 p-3 col-lg-6 col-xl-3">
                <a href="views/detalle.jsp?argumento1=h03"><img href="views/detalle"  id="h06" name="hot" src="images/hotel03.png" class="mw-100"></a>
            </div>
    </section>

    <section class="containter">
        <div id="d1"></div>
    </section>


</body>



</html>