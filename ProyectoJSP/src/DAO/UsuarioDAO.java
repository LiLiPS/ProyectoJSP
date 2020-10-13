package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Controladores.BD;
import modelos.Usuario;

public class UsuarioDAO {
	public static Usuario getUsuariobyID(int id){
		BD bdConexion = new BD();
        Usuario us = new Usuario();  
        String instruccion = "select id_usuario, clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, rol from usuario where id_usuario=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id);  
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
            	us.setId_usuario(rs.getInt(1));
            	us.setClave_usuario(rs.getString(2));
            	us.setTitulo(rs.getString(3));
				us.setNombre(rs.getString(4));
				us.setApellido_paterno(rs.getString(5));
				us.setApellido_materno(rs.getString(6));
				us.setRol(rs.getString(7));
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return us;  
    } 
	
	public static List<Usuario> getUsuarios(){
		BD bdConexion = new BD();
        List<Usuario> lista = new ArrayList<Usuario>();
        String instruccion = "select id_usuario, clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, rol from Usuario";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                Usuario us = new Usuario();  
                us.setId_usuario(rs.getInt(1));
            	us.setClave_usuario(rs.getString(2));
            	us.setTitulo(rs.getString(3));
				us.setNombre(rs.getString(4));
				us.setApellido_paterno(rs.getString(5));
				us.setApellido_materno(rs.getString(6));
				us.setRol(rs.getString(7));
                lista.add(us);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<Usuario> getUsuariosbyClave(String clave){ 
		BD bdConexion = new BD();
        List<Usuario> lista = new ArrayList<Usuario>(); 
        String instruccion = "select id_usuario, clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, rol from Usuario where clave_usuario LIKE ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1,"%" + clave + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
                Usuario us = new Usuario();  
                us.setId_usuario(rs.getInt(1));
            	us.setClave_usuario(rs.getString(2));
            	us.setTitulo(rs.getString(3));
				us.setNombre(rs.getString(4));
				us.setApellido_paterno(rs.getString(5));
				us.setApellido_materno(rs.getString(6));
				us.setRol(rs.getString(7)); 
                lista.add(us);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }

}
