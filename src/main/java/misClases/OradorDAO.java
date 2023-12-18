package misClases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OradorDAO {
	
	// atributos
    // el objeto Connection representa una conexion entre java y la bbdd
    Connection conexion = null;
	
    // constructor
    public OradorDAO() throws ClassNotFoundException {
    	Conexion con = new Conexion();
        conexion = con.getConnection();
    }
    
    
    
    // recuperar datos ====================================================================================================
    public List<Orador> listarOradores() {
    	
    	List<Orador> listaOradores = new ArrayList<Orador>();
    	
    	try {
    		// consulta sql
            PreparedStatement ps = conexion.prepareStatement("select * from oradores");
            
            // objeto resultado de la consulta => tabla de datos
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String tema = rs.getString("tema");
                
                Orador orador = new Orador(id, nombre, apellido, tema);
                listaOradores.add(orador);
            
            }
    		return listaOradores;
    		
    	} catch (SQLException e) {
    		System.out.println(e);
    		return null;
    	}
     	
    }
    
    
    
    // insertar orador ==================================================================================================
	public boolean insertarOrador (Orador orador) {
		
		try {
			PreparedStatement ps = conexion.prepareStatement("insert into oradores (nombre, apellido, tema) " + "values (?,?,?)");
			ps.setString(1, orador.getNombre());
			ps.setString(2, orador.getApellido());
			ps.setString(3, orador.getTema());
			
			ps.execute();			
			return true;
			
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		}
	}
	
	
	
	// eliminar ticket ===================================================================================================
	public boolean eliminarOrador (int id) {
		
		try {
			PreparedStatement ps = conexion.prepareStatement("delete from oradores where id = ?");
            ps.setInt(1, id);
            ps.execute();
			return true;
			
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		}
	}
	
	

}
