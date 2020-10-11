//Parada Sánchez Liliana
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Controladores.BD;
import modelos.Usuario;

public class LoginDAO {
	
	public static boolean validar(String name, String pass) {
		BD bdConexion = new BD();
		boolean status = false;
		String instruccion = "select * from usuario where usuario=? and contrasena=?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static Usuario rolUsuario(String name, String pass) {
		BD bdConexion = new BD();
		Usuario us = new Usuario();
		String instruccion = "select titulo, nombre, apellido_paterno, apellido_materno, rol from usuario where usuario=? and contrasena=?";		
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				us.setTitulo(rs.getString(1));
				us.setNombre(rs.getString(2));
				us.setApellido_paterno(rs.getString(3));
				us.setApellido_materno(rs.getString(4));
				us.setRol(rs.getString(5));
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return us;
	}

}
