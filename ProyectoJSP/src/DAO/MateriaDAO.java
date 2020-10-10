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
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(  
                         "INSERT INTO materias(numeroControl,nombre,curso,semestre) values (?,?,?,?)");  
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
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(  
                         "update alumnosWeb set numeroControl=?,nombre=?,curso=?,semestre=? where id=?");  
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
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from alumnosWeb where id=?");  
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
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("select * from alumnosWeb where id=?");  
            ps.setInt(1,id);  
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
                m.setIdMateria(rs.getInt(1));  
                m.setNombre(rs.getString(2));  
                m.setAbreviaturaCarrera(rs.getString(3));  
                m.setCarrera(rs.getString(4));  
                m.setSemestre(rs.getInt(5));
                m.setHoras_t(rs.getInt(6));
                m.setHoras_p(rs.getInt(7));
                m.setCreditos(rs.getInt(8));
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
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("select * from alumnosWeb");  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                Materia m = new Materia();  
                m.setIdMateria(rs.getInt(1));  
                m.setNombre(rs.getString(2));  
                m.setAbreviaturaCarrera(rs.getString(3));  
                m.setCarrera(rs.getString(4));  
                m.setSemestre(rs.getInt(5));
                m.setHoras_t(rs.getInt(6));
                m.setHoras_p(rs.getInt(7));
                m.setCreditos(rs.getInt(8)); 
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
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("select * from alumnosWeb where numeroControl LIKE ?");  
            ps.setString(1,"%" + clave + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
                Materia m = new Materia();  
                m.setIdMateria(rs.getInt(1));  
                m.setNombre(rs.getString(2));  
                m.setAbreviaturaCarrera(rs.getString(3));  
                m.setCarrera(rs.getString(4));  
                m.setSemestre(rs.getInt(5));
                m.setHoras_t(rs.getInt(6));
                m.setHoras_p(rs.getInt(7));
                m.setCreditos(rs.getInt(8)); 
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }

}
