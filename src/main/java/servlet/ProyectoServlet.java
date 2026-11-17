package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import entidades.Proyecto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ProyectoServlet")
public class ProyectoServlet extends HttpServlet {

    private static List<Proyecto> listaProyectos = new ArrayList<>();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        String nombreProyecto = request.getParameter("nombreProyecto");
        String descripcion = request.getParameter("descripcion");
        String fechaInicio = request.getParameter("fechaInicio");
        String fechaFin = request.getParameter("fechaFin");
        String asesorTecnico = request.getParameter("asesorTecnico");

        double presupuesto = Double.parseDouble(request.getParameter("presupuesto"));

        if (idParam != null && !idParam.isEmpty()) {

            int indice = Integer.parseInt(idParam) - 1;

            if (indice >= 0 && indice < listaProyectos.size()) {

                Proyecto proyecto = listaProyectos.get(indice);

                proyecto.setNombreProyecto(nombreProyecto);
                proyecto.setDescripcion(descripcion);
                proyecto.setFechaInicio(fechaInicio);
                proyecto.setFechaFin(fechaFin);
                proyecto.setAsesorTecnico(asesorTecnico);
                proyecto.setPresupuesto(presupuesto);
            }

        } else {

            Proyecto proyecto = new Proyecto(nombreProyecto, descripcion,
                    fechaInicio, fechaFin, asesorTecnico, presupuesto);

            listaProyectos.add(proyecto);
        }

        request.setAttribute("proyectos", listaProyectos);
        request.getRequestDispatcher("proyectos.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        String idParam = request.getParameter("id");

        if ("eliminar".equals(accion) && idParam != null) {

            int indice = Integer.parseInt(idParam) - 1;

            if (indice >= 0 && indice < listaProyectos.size()) {
                listaProyectos.remove(indice);
            }

            request.setAttribute("proyectos", listaProyectos);
            request.getRequestDispatcher("proyectos.jsp").forward(request, response);
            return;
        }

        if (idParam != null) {

            int indice = Integer.parseInt(idParam) - 1;

            if (indice >= 0 && indice < listaProyectos.size()) {

                request.setAttribute("proyecto", listaProyectos.get(indice));
                request.setAttribute("id", indice + 1);

                request.getRequestDispatcher("editar.jsp").forward(request, response);
                return;
            }
        }

        request.setAttribute("proyectos", listaProyectos);
        request.getRequestDispatcher("proyectos.jsp").forward(request, response);
    }

}
