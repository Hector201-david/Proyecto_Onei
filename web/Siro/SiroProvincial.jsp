<%-- 
    Document   : SiroProvincial
    Created on : 21 jun 2022, 11:51:47
    Author     : DAMAGED
--%>

<%@page import="conexiones.conexion"%>
<%@page import="java.sql.*" %>

<%
    try {

        Connection con = new conexion().getConexion();
        String query = "SELECT * FROM mod_maestros.tbmaestro_general";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../ascent/css/estilos_siro_provincial.css">
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



                        <h3>Online</h3>


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




        <div class="container-fluid lll">
            <!-- Tabla del listado de usuarios -->
            <table class="table table-striped my-2" id="tablax">
                <thead>
                    <tr>
                        <th scope="col">Cod Centro Informant</th>
                        <th scope="col">Nombre Centro Informant</th>
                        <th scope="col">Centro Informante corto</th>
                        <th scope="col">Cityid</th>
                        <th scope="col">Codigopostal</th>
                        <th scope="col">phone</th>
                        <th scope="col">Cityid</th>
                        <th scope="col">phone</th>
                        <th scope="col">Cityid</th>
                        <th scope="col">phone</th>
                        <th scope="col">Cityid</th>
                        <th scope="col">Cityid</th>
                        <th scope="col">phone</th>
                        <th scope="col">Cityid</th>

                    </tr>
                </thead>
                <tbody>
                    <%         
                        int cont=0;
                        while(rs.next()&& cont<5) {
                        cont++;
                    %>
                    <tr>
                        <th scope="row"><%=rs.getString(1)%></th>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        <td><%=rs.getString(10)%></td>
                        <td><%=rs.getString(11)%></td>
                        <td><%=rs.getString(9)%></td>
                        <td><%=rs.getString(10)%></td>
                        <td><%=rs.getString(11)%></td>

                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println("<h1>Error al Conectar con la DB</h1>");
                            e.printStackTrace();
                            String estado_conex = "Online";
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
                            processing: "Tratamiento en Curso...",
                            search: "Buscar&nbsp;:",
                            lengthMenu: "Agrupar de _MENU_ Items",
                            info: "Mostrando del Item _START_ al _END_ de un Total de _TOTAL_ Items",
                            infoEmpty: "No Existen Datos.",
                            infoFiltered: "(Filtrado de _MAX_ Elementos en Total)",
                            infoPostFix: "",
                            loadingRecords: "Cargando...",
                            zeroRecords: "No se Encontraron Datos con tu Busqueda Intentelo de Nuevo.",
                            emptyTable: "No hay Datos Disponibles en la Tabla.",
                            paginate: {
                                first: "Primero",
                                previous: "Anterior",
                                next: "Siguiente",
                                last: "Ultimo"
                            },
                            aria: {
                                sortAscending: ": Active para Ordenar la Columna en Orden Ascendente",
                                sortDescending: ": Active para Ordenar la Columna en Orden Descendente"
                            }
                        },
                        scrollY: 400,
                        lengthMenu: [[20, 50, 75, 100, -1], [20, 50, 75, 100, "All"]],
                    });
                });
            </script>
            <!--/Paginacion--> 
        </div>

        <!--Final-->
        <script src="../ascent/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
