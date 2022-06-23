<%-- 
    Document   : newjsp
    Created on : 21 jun 2022, 11:43:47
    Author     : DAMAGED
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./ascent/css/bootstrap.min.css">
        <link rel="stylesheet" href="./ascent/css/estilos_principal.css">
        <title>Principal</title>
    </head>
    <body>



    <body class="gradient">
        <form method="" action="./login.jsp" class="needs-validation" novalidate>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand oneibar" href="./">Onei-Granma</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./Administracion/administracion.jsp">Administrador</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="./Siro/SiroProvincial.jsp">Siro Provincial</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="./Siro/SiroTerritorial.jsp">Siro Territorial</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="#">Comparacion</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="#">Directorio</a>
                            </li>

                            <!--
                            <li class="nav-item dropdown ">
                              <a class="nav-link dropdown-toggle oneibar2 active" href="#" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown link
                              </a>
                              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                              </ul>
                            </li>
                            -->
                            <button type="submit"  class="btn btn-primary btndirect btmbar">Cerrar Seccion</button>

                        </ul>
                    </div>
                </div>
            </nav>
        </form>

        <script src="./ascent/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
