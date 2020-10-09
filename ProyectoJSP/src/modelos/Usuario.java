//Parada Sánchez Liliana
package modelos;

public class Usuario {
	//horas: horas que se le asignaron al maestro por semana
	private int id_usuario, horas;
	//titulo: Ing. Lic.
	private String clave_maestro, titulo, nombre, apellido_materno, apellido_paterno, usuario, contrasena, rol;

	public int getIdUsuario() {
		return id_usuario;
	}

	public void setIdUsuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public int getHoras() {
		return horas;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}

	public String getClaveMaestro() {
		return clave_maestro;
	}

	public void setClaveMaestro(String clave_maestro) {
		this.clave_maestro = clave_maestro;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido_materno() {
		return apellido_materno;
	}

	public void setApellido_materno(String apellido_materno) {
		this.apellido_materno = apellido_materno;
	}

	public String getApellido_paterno() {
		return apellido_paterno;
	}

	public void setApellido_paterno(String apellido_paterno) {
		this.apellido_paterno = apellido_paterno;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

}
