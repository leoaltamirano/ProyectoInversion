
<%@ page import="java.util.List" %>
<%@ page import="entidades.Proyecto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Proyectos Disponibles | MML</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #eef3f8;
            font-family: Arial, sans-serif;
        }

        .encabezado {
            background: #142d46;
            color: white;
            padding: 25px;
            border-bottom: 4px solid #16b6b0;
        }

        .contenido {
            max-width: 1250px;
            margin: 45px auto;
        }

        .panel {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.06);
        }

        .titulo {
            color: #142d46;
            font-weight: bold;
        }

        .table thead {
            background: #142d46;
            color: white;
        }

        .btn-editar {
            background: #16aaa5;
            color: white;
        }

        .btn-editar:hover {
            background: #128b87;
            color: white;
        }
    </style>
</head>

<body>

<header class="encabezado">
    <div class="container">
        <h3>Gestión de Proyectos</h3>
        <small>Municipalidad Metropolitana de Lima</small>
    </div>
</header>

<div class="container contenido">

    <div class="panel">

        <h2 class="titulo mb-2">Proyectos Disponibles</h2>
        <p class="text-secondary mb-4">
            Consulte y administre los proyectos de inversión pública.
        </p>

        <div class="table-responsive">

            <table class="table table-bordered table-striped align-middle">

                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre del Proyecto</th>
                        <th>Inicio</th>
                        <th>Fin</th>
                        <th>Asesor Técnico</th>
                        <th>Presupuesto</th>
                        <th>Acciones</th>
                    </tr>
                </thead>

                <tbody>

                    <%
                    List<Proyecto> proyectos =
                        (List<Proyecto>) request.getAttribute("proyectos");

                    if (proyectos != null && !proyectos.isEmpty()) {

                        int contador = 1;

                        for (Proyecto p : proyectos) {

                            int id = contador++;
                    %>

                    <tr>
                        <td><%= id %></td>
                        <td><%= p.getNombreProyecto() %></td>
                        <td><%= p.getFechaInicio() %></td>
                        <td><%= p.getFechaFin() %></td>
                        <td><%= p.getAsesorTecnico() %></td>
                        <td>S/ <%= String.format("%,.2f", p.getPresupuesto()) %></td>

                        <td>
                            <a href="ProyectoServlet?id=<%= id %>"
                                class="btn btn-sm btn-editar">
                                Editar
                            </a>

                            <a href="ProyectoServlet?accion=eliminar&id=<%= id %>"
                                class="btn btn-sm btn-danger"
                                onclick="return confirm('¿Está seguro de eliminar este proyecto?');">
                                Eliminar
                            </a>
                        </td>
                    </tr>

                    <%
                        }

                    } else {
                    %>

                    <tr>
                        <td colspan="7" class="text-center text-secondary py-4">
                            No hay proyectos registrados actualmente.
                        </td>
                    </tr>

                    <%
                    }
                    %>

                </tbody>

            </table>

        </div>

        <a href="index.jsp" class="btn btn-primary mt-3">
            + Registrar otro proyecto
        </a>

    </div>

</div>

</body>
</html>
