
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entidades.Proyecto" %>

<%
    Proyecto proyecto = (Proyecto) request.getAttribute("proyecto");
    Integer id = (Integer) request.getAttribute("id");
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Proyecto | MML</title>
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

        .formulario {
            max-width: 850px;
            margin: 45px auto;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .btn-actualizar {
            background: #16aaa5;
            color: white;
        }

        .btn-actualizar:hover {
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

<div class="formulario">

    <span class="badge bg-info text-dark mb-2">EDICIÓN</span>

    <h2 class="mb-2">Actualizar proyecto</h2>
    <p class="text-secondary mb-4">Modifique la información del proyecto seleccionado.</p>

    <form method="post" action="ProyectoServlet">

        <input type="hidden" name="id" value="<%= id %>">

        <div class="mb-3">
            <label class="form-label">Nombre del proyecto</label>
            <input type="text" name="nombreProyecto"
                class="form-control"
                value="<%= proyecto.getNombreProyecto() %>"
				minlength="4" maxlength="60" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Descripción técnica</label>
            <textarea name="descripcion" class="form-control" rows="3"><%= proyecto.getDescripcion() %></textarea>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label class="form-label">Fecha de inicio</label>	
                <input type="date" name="fechaInicio"
                    class="form-control"
                    value="<%= proyecto.getFechaInicio() %>" required>
            </div>

            <div class="col-md-6 mb-3">
                <label class="form-label">Fecha de culminación</label>
                <input type="date" name="fechaFin"
                    class="form-control"
                    value="<%= proyecto.getFechaFin() %>" required>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label class="form-label">Asesor técnico</label>
                <input type="text" name="asesorTecnico"
                    class="form-control"
                    value="<%= proyecto.getAsesorTecnico() %>" required>
            </div>

            <div class="col-md-6 mb-3">
                <label class="form-label">Presupuesto asignado (S/)</label>
                <input type="number" name="presupuesto"
                    class="form-control" step="0.01" min="0"
                    value="<%= proyecto.getPresupuesto() %>" required>
            </div>
        </div>

        <hr class="my-4">

        <button type="submit" class="btn btn-actualizar px-4">
            Guardar cambios
        </button>

        <a href="ProyectoServlet" class="btn btn-outline-secondary ms-2">
            Cancelar
        </a>

    </form>
</div>

</body>
</html>
