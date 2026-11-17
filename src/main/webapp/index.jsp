
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestión de Proyectos | MML</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">

    <style>
        body {
            background: #f1f5f9;
            font-family: 'Segoe UI', sans-serif;
            color: #263445;
        }

        .header {
            background: #142b45;
            color: white;
            padding: 25px 0;
            border-bottom: 4px solid #16a6a1;
        }

        .brand-icon {
            background: #16a6a1;
            padding: 12px;
            border-radius: 12px;
            font-size: 25px;
        }

        .main-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.06);
        }

        .section-title {
            color: #142b45;
            font-weight: 700;
        }

        .form-label {
            font-weight: 600;
            font-size: 14px;
            color: #34465a;
        }

        .form-control {
            border-radius: 8px;
            padding: 11px;
            border-color: #dce3eb;
        }

        .form-control:focus {
            border-color: #16a6a1;
            box-shadow: 0 0 0 0.2rem rgba(22,166,161,0.15);
        }

        .btn-register {
            background: #16a6a1;
            color: white;
            border: none;
            padding: 11px 25px;
            border-radius: 8px;
            font-weight: 600;
        }

        .btn-register:hover {
            background: #108580;
            color: white;
        }

        .required {
            color: #dc3545;
        }

        .footer {
            color: #8291a3;
            font-size: 13px;
        }
    </style>
</head>

<body>

    <header class="header">
        <div class="container">
            <div class="d-flex align-items-center gap-3">
                <span class="brand-icon">
                    <i class="bi bi-buildings"></i>
                </span>

                <div>
                    <h4 class="mb-1">Gestión de Proyectos</h4>
                    <small class="text-white-50">
                        Municipalidad Metropolitana de Lima
                    </small>
                </div>
            </div>
        </div>
    </header>

    <main class="container py-5">

        <div class="row justify-content-center">
            <div class="col-lg-9">

                <div class="card main-card p-4 p-md-5">

                    <div class="mb-4">
                        <span class="badge text-bg-info mb-2">
                            NUEVO REGISTRO
                        </span>

                        <h3 class="section-title">
                            Registrar proyecto de inversión
                        </h3>

                        <p class="text-secondary">
                            Complete los datos para registrar un nuevo
                            proyecto en el sistema.
                        </p>
                    </div>

                    <form method="post" action="ProyectoServlet">

                        <div class="row">

                            <div class="col-12 mb-3">
                                <label class="form-label">
                                    Nombre del proyecto
                                    <span class="required">*</span>
                                </label>

                                <input name="nombreProyecto"
                                    type="text"
                                    class="form-control"
                                    placeholder="Ej. Construcción de hospital"
                                    minlength="4"
                                    maxlength="60"
                                    required>
                            </div>

                            <div class="col-12 mb-3">
                                <label class="form-label">
                                    Descripción técnica
                                </label>

                                <textarea name="descripcion"
                                    class="form-control"
                                    rows="3"
                                    placeholder="Descripción del proyecto (opcional)"></textarea>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">
                                    Fecha de inicio
                                    <span class="required">*</span>
                                </label>

                                <input name="fechaInicio"
                                    id="fechaInicio"
                                    type="date"
                                    class="form-control"
                                    required>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">
                                    Fecha de culminación
                                    <span class="required">*</span>
                                </label>

                                <input name="fechaFin"
                                    id="fechaFin"
                                    type="date"
                                    class="form-control"
                                    required>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">
                                    Asesor técnico
                                    <span class="required">*</span>
                                </label>

                                <input name="asesorTecnico"
                                    type="text"
                                    class="form-control"
                                    placeholder="Nombres y apellidos"
                                    pattern="[A-Za-zÁÉÍÓÚáéíóúÑñÜü ]+"
                                    title="Ingrese nombres y apellidos usando letras"
                                    required>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">
                                    Presupuesto asignado (S/)
                                    <span class="required">*</span>
                                </label>

                                <input name="presupuesto"
                                    type="number"
                                    class="form-control"
                                    placeholder="Ej. 150000.00"
                                    min="0.01"
                                    step="0.01"
                                    required>
                            </div>

                        </div>

                        <div class="border-top pt-4 mt-3">

                            <p class="text-secondary small">
                                <span class="required">*</span>
                                Campos obligatorios.
                            </p>

                            <div class="d-flex flex-wrap gap-2">

                                <button type="submit" class="btn btn-register">
                                    <i class="bi bi-plus-circle me-2"></i>
                                    Registrar proyecto
                                </button>

                                <button type="reset" class="btn btn-outline-secondary">
                                    <i class="bi bi-arrow-counterclockwise me-2"></i>
                                    Limpiar
                                </button>

                                <a href="ProyectoServlet"
                                    class="btn btn-outline-primary">
                                    <i class="bi bi-list-ul me-2"></i>
                                    Ver proyectos
                                </a>

                            </div>
                        </div>

                    </form>
                </div>

                <div class="text-center mt-4 footer">
                    Sistema de Gestión de Proyectos de Inversión Pública
                    <br>
                    Municipalidad Metropolitana de Lima
                </div>

            </div>
        </div>

    </main>

    <script>
        const inicio = document.getElementById("fechaInicio");
        const fin = document.getElementById("fechaFin");

        function validarFechas() {
            fin.setCustomValidity("");

            if (inicio.value && fin.value && fin.value < inicio.value) {
                fin.setCustomValidity(
                    "La fecha de culminación no puede ser anterior a la fecha de inicio."
                );
            }
        }

        inicio.addEventListener("change", validarFechas);
        fin.addEventListener("change", validarFechas);
    </script>

</body>
</html>
