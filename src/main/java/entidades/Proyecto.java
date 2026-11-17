package entidades;

public class Proyecto {

    private String nombreProyecto;
    private String descripcion;
    private String fechaInicio;
    private String fechaFin;
    private String asesorTecnico;
    private double presupuesto;
    

public Proyecto(String nombreProyecto, String descripcion,
        String fechaInicio, String fechaFin,
        String asesorTecnico, double presupuesto) {

    this.nombreProyecto = nombreProyecto;
    this.descripcion = descripcion;
    this.fechaInicio = fechaInicio;
    this.fechaFin = fechaFin;
    this.asesorTecnico = asesorTecnico;
    this.presupuesto = presupuesto;

}


public String getNombreProyecto() {
	return nombreProyecto;
}


public void setNombreProyecto(String nombreProyecto) {
	this.nombreProyecto = nombreProyecto;
}


public String getDescripcion() {
	return descripcion;
}


public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}


public String getFechaInicio() {
	return fechaInicio;
}


public void setFechaInicio(String fechaInicio) {
	this.fechaInicio = fechaInicio;
}


public String getFechaFin() {
	return fechaFin;
}


public void setFechaFin(String fechaFin) {
	this.fechaFin = fechaFin;
}


public String getAsesorTecnico() {
	return asesorTecnico;
}


public void setAsesorTecnico(String asesorTecnico) {
	this.asesorTecnico = asesorTecnico;
}


public double getPresupuesto() {
	return presupuesto;
}


public void setPresupuesto(double presupuesto) {
	this.presupuesto = presupuesto;
}



}
