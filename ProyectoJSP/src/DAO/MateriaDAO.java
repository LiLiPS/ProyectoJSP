//Parada Sánchez Liliana
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import modelos.Materia;
import Controladores.BD;

public class MateriaDAO {
	
	public static int guardarMateria(Materia m){ 
		BD bdConexion = new BD();
        int status = 0; 
        String instruccion = "INSERT INTO materia(clave_materia,nombre,abreviatura_carrera,"
        					+ "carrera,semestre, horas_t, horas_p, creditos) values (?,?,?,?,?,?,?,?)";
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1, m.getClave_materia());  
            ps.setString(2, m.getNombre());
            ps.setString(3, m.getAbreviaturaCarrera());
            ps.setString(4, m.getCarrera());  
            ps.setInt(5, m.getSemestre());
            ps.setInt(6, m.getHoras_t());
            ps.setInt(7, m.getHoras_p());
            ps.setInt(8, m.getCreditos());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }  
	
	public static int actualizarMateria(Materia m){  
		BD bdConexion = new BD();
        int status = 0;  
        String instruccion = "update materia set clave_materia=?,nombre=?,abreviatura_carrera=?,"
        					+ "carrera=? semestre=? horas_t=? horas_p=? creditos=? where id_materia=?";
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1, m.getClave_materia());  
            ps.setString(2, m.getNombre());
            ps.setString(3, m.getAbreviaturaCarrera());
            ps.setString(4, m.getCarrera());  
            ps.setInt(5, m.getSemestre());
            ps.setInt(6, m.getHoras_t());
            ps.setInt(7, m.getHoras_p());
            ps.setInt(8, m.getCreditos());
            ps.setInt(9, m.getIdMateria());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int borrarMateria(int id){  
		BD bdConexion = new BD();
        int status = 0;  
        String instruccion = "delete from materia where id_materia=?";
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }
	
	public static Materia getMateriabyID(int id){
		BD bdConexion = new BD();
        Materia m = new Materia();  
        String instruccion = "select * from materia where id_materia=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id);  
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
                m.setIdMateria(rs.getInt(1)); 
                m.setClave_materia(rs.getString(2));
                m.setNombre(rs.getString(3));  
                m.setAbreviaturaCarrera(rs.getString(4));  
                m.setCarrera(rs.getString(5));  
                m.setSemestre(rs.getInt(6));
                m.setHoras_t(rs.getInt(7));
                m.setHoras_p(rs.getInt(8));
                m.setCreditos(rs.getInt(9));
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return m;  
    } 
	
	public static List<Materia> getMaterias(){
		BD bdConexion = new BD();
        List<Materia> lista = new ArrayList<Materia>();
        String instruccion = "select * from materia";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                Materia m = new Materia();  
                m.setIdMateria(rs.getInt(1)); 
                m.setClave_materia(rs.getString(2));
                m.setNombre(rs.getString(3));  
                m.setAbreviaturaCarrera(rs.getString(4));  
                m.setCarrera(rs.getString(5));  
                m.setSemestre(rs.getInt(6));
                m.setHoras_t(rs.getInt(7));
                m.setHoras_p(rs.getInt(8));
                m.setCreditos(rs.getInt(9));
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<Materia> getMateriasbyClave(String clave){ 
		BD bdConexion = new BD();
        List<Materia> lista = new ArrayList<Materia>(); 
        String instruccion = "select * from materia where clave_materia LIKE ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1,"%" + clave + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
                Materia m = new Materia();  
                m.setIdMateria(rs.getInt(1)); 
                m.setClave_materia(rs.getString(2));
                m.setNombre(rs.getString(3));  
                m.setAbreviaturaCarrera(rs.getString(4));  
                m.setCarrera(rs.getString(5));  
                m.setSemestre(rs.getInt(6));
                m.setHoras_t(rs.getInt(7));
                m.setHoras_p(rs.getInt(8));
                m.setCreditos(rs.getInt(9)); 
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }

}
