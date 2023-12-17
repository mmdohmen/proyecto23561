package misClases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TicketDAO {

	// atributos
    // el objeto Connection representa una conexion entre java y una bbdd
    Connection conexion = null;

    // constructor
    public TicketDAO() throws ClassNotFoundException {
        Conexion con = new Conexion();
        conexion = con.getConnection();
    }
    
    
    
 // recuperar datos ====================================================================================================
    public List<Ticket> listarTickets() {

        List<Ticket> listaTickets = new ArrayList<>();;

        try {
            // consulta sql
            PreparedStatement ps = conexion.prepareStatement("select * from tickets");

            // objeto resultado de la consulta => tabla de datos
            ResultSet rs = ps.executeQuery();

            // recupero los datos de la tabla rs, los asigno a variables, y los agrego a la lista de tickets
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String mail = rs.getString("mail");
                int cant = rs.getInt("cant");
                int tipo = rs.getInt("tipo");
                float total = rs.getFloat("total");

                Ticket ticket = new Ticket(id, nombre, apellido, mail, cant, tipo, total);
                listaTickets.add(ticket);

            }
            return listaTickets;

        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

    }
    
    
    
    
 // insertar tickets ==================================================================================================
    public boolean insertarTicket (Ticket ticket) {

        try {
            PreparedStatement ps = conexion.prepareStatement(
                    "insert into tickets (nombre, apellido, mail, cant, tipo, total) " +
                        "values (?,?,?,?,?,?)");

            ps.setString(1, ticket.getNombre());
            ps.setString(2, ticket.getApellido());
            ps.setString(3, ticket.getMail());
            ps.setInt(4, ticket.getCant());
            ps.setInt(5, ticket.getTipo());
            ps.setFloat(6, ticket.getTotal());

            ps.execute();
            return true;

        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }

    }
    
    
    
 // eliminar ticket ===================================================================================================
    public boolean eliminar (int id) {

        try {
            PreparedStatement ps = conexion.prepareStatement("delete from tickets where id = ?");
            ps.setInt(1, id);
            ps.execute();
            return true;

        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }

    }
    
    
    
    
	
}
