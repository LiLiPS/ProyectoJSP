//Parada S�nchez Liliana
package modelos;

public class Materia {
	// horas_t: te�ricas horas_p: pr�cticas
	private int id_materia, semestre, creditos, horas_t, horas_p;	
	private String clave_materia, nombre, carrera, abreviaturaCarrera;
	
	public int getId_materia() {
		return id_materia;		
	}

	public void setId_materia(int id_materia) {
		this.id_materia = id_materia;
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

	public int getHoras_t() {
		return horas_t;
	}

	public void setHoras_t(int horas_t) {
		this.horas_t = horas_t;
	}

	public int getHoras_p() {
		return horas_p;
	}

	public void setHoras_p(int horas_p) {
		this.horas_p = horas_p;
	}

	public String getCarrera() {
		return carrera;
	}

	public String getAbreviaturaCarrera() {
		return abreviaturaCarrera;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public void setAbreviaturaCarrera(String abreviaturaCarrera) {
		this.abreviaturaCarrera = abreviaturaCarrera;
	}
}
