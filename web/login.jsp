<%-- 
    Document   : newjsplogin
    Created on : 21 jun 2022, 11:49:29
    Author     : DAMAGED
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./ascent/css/estilos_login.css">
    <link rel="stylesheet" href="./ascent/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        
    <body class="text-center gradient">

        <main class="form-signin w-100 m-auto">
            
            <form method="" action="./index.jsp" class="needs-validation" novalidate>
                <h1><svg xmlns="http://www.w3.org/2000/svg" data-aos="flip-left" width="150" height="150"
                        fill="currentColor" class="bi bi-person-circle imag" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                        <path fill-rule="evenodd"
                            d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                    </svg></h1>
                <h1 class="h3 mb-3 fw-normal">Inicio de Seccion</h1>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" required placeholder="Nombre de Usuario">
                    <label for="floatingInput">Nombre de Usuario</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" required id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me">Recordar Credenciales
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">ENTRAR</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2022–2025</p>
                <p class="text-muted">&copy; Todos los Derechos Reservados</p>
            </form>
        </main>

        <script src="./ascent/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
