<%-- 
    Document   : administracion
    Created on : 23 jun 2022, 7:08:30
    Author     : DAMAGED
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../ascent/css/adminsistracion.css"/>
        <link rel="stylesheet" href="../ascent/css/bootstrap.min.css"/>
        <title>JSP Page</title>
    </head>


    <!--Navbar-->
    <body class="gradient">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand oneibar" href="#">Area de Administracion</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page">Bienvenido, Administrador del
                                Sistema</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index.jsp">Ir al Sitio</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Cambiar Password</a>
                        </li>
                    </ul>

                    <button type="button" class="btn btn-primary btndirect btmbar">Cerrar Seccion</button>
                </div>
            </div>
        </nav>
        <!--/Navbar-->

        <div class="container des">
            <div class="row">
            </div>
        </div>

        <div class="container desarr">
            <div class="row">
                <h6 class="tst">CREACION DE CUENTAS DE CUENTAS Y GRUPOS</h6>

            </div>
        </div>

        <div class="container cuenuser">
            <div class="row">
                <a class="nav-link activ tst" aria-current="page" href="#">Crear Cuentas de Usuario </a>
            </div>
        </div>

        <div class="container crgrup">
            <div class="row">
                <a class="nav-link active tst" aria-current="page" href="#">Crear Grupos</a>
            </div>
        </div>


        <div class="container dirtele">
            <div class="row">
                <h6 class="tst">DIRECTORIO TELEFONICO</h6>
            </div>
        </div>


        <div class="container cuenuser">
            <div class="row">
                <a class="nav-link activ tst" aria-current="page" href="#">Prefijos </a>
            </div>
        </div>

        <div class="container crgrup">
            <div class="row">
                <a class="nav-link active tst" aria-current="page" href="#">Registros Telefonicos</a>
            </div>
        </div>

        <div class="container dirtele">
            <div class="row">
                <h6 class="tst">KERNEL</h6>

            </div>
        </div>

        <div class="container cuenuser">
            <div class="row">
                <a class="nav-link activ tst" aria-current="page" href="#">Eventos </a>
            </div>
        </div>

        <div class="container crgrup">
            <div class="row">
                <a class="nav-link active tst" aria-current="page" href="#">Archivos</a>
            </div>
        </div>
        <div class="container cuenuser">
            <div class="row">
                <a class="nav-link activ tst" aria-current="page" href="#">Informacion </a>
            </div>
        </div>

        <div class="container crgrup">
            <div class="row">
                <a class="nav-link active tst" aria-current="page" href="#">Noticias</a>
            </div>
        </div>


        <script src="../ascent/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
