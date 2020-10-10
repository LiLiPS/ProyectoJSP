//Parada Sánchez Liliana
package Controladores;

import java.sql.Connection;
import java.sql.DriverManager;

public class BD {
	
	public Connection getConnection(){  
        Connection con=null;  
        
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnosweb","root","");  
        }catch(Exception e){
        	System.out.println(e);
        }  
        return con;  
    }

}
