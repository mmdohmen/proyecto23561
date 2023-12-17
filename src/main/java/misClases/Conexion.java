package misClases;

import java.sql.*;
import java.util.List;

public class Conexion {
	
	public Connection getConnection() throws ClassNotFoundException {

        // el objeto Connection representa una conexion entre java y una bbdd
        Connection conexion = null;

        try {
            // carga el controlador de JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // establece la conexion
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectoFinal23561",
                                                    "root","root");

        } catch (SQLException e) {
            System.out.println(e);
        }
        return conexion;
    }
	
	

	// prueba de la conexion ================================================================================================
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		Conexion con = new Conexion();
        Connection conexion = con.getConnection();

        PreparedStatement ps = conexion.prepareStatement("select * from tickets");
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("id");
            String nombre = rs.getString("nombre");
            String apellido = rs.getString("apellido");
            String mail = rs.getString("mail");

            System.out.println(id + ") " + nombre + " " + apellido + " - " + mail);
        }
        
        /*
        List<Ticket> listaTickets = null;
		TicketDAO ticket = new TicketDAO();
		listaTickets = ticket.listarTickets();
		System.out.println(listaTickets);
		*/

	}

}
