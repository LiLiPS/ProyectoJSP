/*Para reportes*/
select horario.clave_grupo, usuario.clave_usuario, materia.clave_materia, materia.nombre as materia, horario.grupo, horario.aula, horario.alumnos, materia.abreviatura_carrera as abreviaturaCarrera,
	   materia.semestre, horario.lunes, horario.martes, horario.miercoles, horario.jueves, horario.viernes, materia.horas_t, materia.horas_p, materia.creditos,
	   usuario.horas, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro from
	   horario JOIN usuario on horario.id_usuario = usuario.id_usuario JOIN materia on materia.id_materia = horario.id_materia WHERE usuario.id_usuario = ?;