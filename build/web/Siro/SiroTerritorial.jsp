<%-- 
    Document   : SiroProvincial
    Created on : 21 jun 2022, 11:51:47
    Author     : DAMAGED
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../ascent/css/estilos_siro_territorial.css">
        <link rel="stylesheet" href="../ascent/css/bootstrap.min.css">
        <link rel="stylesheet" href="../ascent/css/bootstrap.css">
        <link rel="stylesheet" href="../ascent/css/dataTables.bootstrap4.min.css">

        <title>Siro-Provincial</title>

    </head>
    <body class="gradient">

        <!--Navbar-->
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand oneibar" href="">Siro-Provincial</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle oneibar2 active" href="#" id="navbarDropdownMenuLink"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Opciones
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#ModalFiltrar" href="#">Filtrar</a></li>


                                <li><a class="dropdown-item btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#ModalTotal" href="#">Totales</a></li>


                                <li><a class="dropdown-item btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#ModalConfig" href="#">Configuracion</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--/Navbar-->    

        <!-- Modal Filtrar -->
        <div class="modal fade" id="ModalFiltrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Filtrar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!--Contenido Modal Filtrar-->


                        <!--Contenido Modal /Modal-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--/Modal Filtrar-->


        <!--Modal Total-->
        <div class="modal fade" id="ModalTotal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Total</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!--Contenido Modal Filtrar-->


                        <!--Contenido Modal /Modal-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--/Modal Total-->


        <!--Modal config-->
        <div class="modal fade" id="ModalConfig" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Configuracion</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!--Contenido Modal Filtrar-->



                        <!--Contenido Modal /Modal-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--/Modal Config-->


        <% 
      try {
          Class.forName("com.mysql.jdbc.Driver");
          //1. Crear Conexion
          Connection miConection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila", "root", "");

          //2. Crear objeto Statmen
          Statement mistatment = miConection.createStatement();

          //3.Ejecutar sql
          ResultSet miResulsert = mistatment.executeQuery("SELECT * FROM address");
           
     
        
        %>

        <div class="container lll">
            <!-- Tabla del listado de usuarios -->
            <table class="table table-striped my-2" id="tablax">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Dirrecion</th>
                        <th scope="col">Distrito</th>
                        <th scope="col">City id</th>
                        <th scope="col">Codigo postal</th>
                        <th scope="col">phone</th>
                    </tr>
                </thead>
                <tbody>
                    <%  
                    int cont=0;
                    while (miResulsert.next()&&cont<15) {   
                    cont++; 
                    %>
                    <tr>
                        <th scope="row"><%=miResulsert.getString(1)%></th>
                        <td><%=miResulsert.getString(2)%></td>
                        <td><%=miResulsert.getString(4)%></td>
                        <td><%=miResulsert.getString(5)%></td>
                        <td><%=miResulsert.getString(6)%></td>
                        <td><%=miResulsert.getString(7)%></td>
                    </tr>
                    <%
                     }
                 } catch (Exception e) {
             System.out.println("Error al conectar con la db");
             e.printStackTrace();
         }
                    %>
                </tbody>
            </table>        
            <!-- /Tabla del listado de usuarios -->
        </div>
        <div class="container">
            <!--Paginacion-->
            <script src="../ascent/js/jquery-1.12.4.js">
            </script>
            <script src="../ascent/js/jquery.dataTables.min.js">
            </script>
            <script src="../ascent/js/dataTables.bootstrap4.min.js">
            </script>

            <script>
                $(document).ready(function () {
                    $('#tablax').DataTable({
                        language: {
                            processing: "Tratamiento en curso...",
                            search: "Buscar&nbsp;:",
                            lengthMenu: "Agrupar de _MENU_ items",
                            info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
                            infoEmpty: "No existen datos.",
                            infoFiltered: "(filtrado de _MAX_ elementos en total)",
                            infoPostFix: "",
                            loadingRecords: "Cargando...",
                            zeroRecords: "No se Encontraron Datos con tu Busqueda Intentelo de Nuevo.",
                            emptyTable: "No hay datos disponibles en la tabla.",
                            paginate: {
                                first: "Primero",
                                previous: "Anterior",
                                next: "Siguiente",
                                last: "Ultimo"
                            },
                            aria: {
                                sortAscending: ": Active para ordenar la columna en orden ascendente",
                                sortDescending: ": Active para ordenar la columna en orden descendente"
                            }
                        },
                        scrollY: 400,
                        lengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
                    });
                });
            </script>
            <!--/Paginacion--> 
        </div>

        <!--Final-->
        <script src="../ascent/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
