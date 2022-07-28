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