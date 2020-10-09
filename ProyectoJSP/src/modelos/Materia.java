//Parada Sánchez Liliana
package modelos;

public class Materia {
	private int id_materia, id_carrera, semestre, creditos;
	// horas_t: teóricas horas_p: prácticas
	private String clave_materia, nombre, horas_t, horas_p;

	public int getIdMateria() {
		return id_materia;
	}

	public void setIdMateria(int id_materia) {
		this.id_materia = id_materia;
	}

	public int getId_carrera() {
		return id_carrera;
	}

	public void setId_carrera(int id_carrera) {
		this.id_carrera = id_carrera;
	}

	public int getSemestre() {
		return semestre;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public int getCreditos() {
		return creditos;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public String getClave_materia() {
		return clave_materia;
	}

	public void setClave_materia(String clave_materia) {
		this.clave_materia = clave_materia;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getHoras_t() {
		return horas_t;
	}

	public void setHoras_t(String horas_t) {
		this.horas_t = horas_t;
	}

	public String getHoras_p() {
		return horas_p;
	}

	public void setHoras_p(String horas_p) {
		this.horas_p = horas_p;
	}

}
