<%--
  Created by IntelliJ IDEA.
  User: GMQ Mañana
  Date: 31/05/2023
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/motor.js"></script>
</head>
<body id="detalle" class="bg-color-header">

<header class="container text-center">
    <nav class="navbar navbar-expand-lg" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="../images/hotel.png" alt="Logo"  class="d-inline-block align-text-top">
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

    <section class="container text-center text-light">

        <div>${argumento1}</div>
        <img src="${empleado1.ruta}" alt="">
        <div>Nombre de Hotel: ${empleado1.ideEmp}</div>
        <div>Categoria: ${empleado1.nomEmp}</div>
        <div>Precio: ${empleado1.apeEmp}</div>
    </section>

</body>
</html>
