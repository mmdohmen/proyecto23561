package misClases;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public FrontController() {
        super();  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = null;
		TicketDAO ticketDAO = null;
		OradorDAO oradorDAO = null;
		
		try {
			ticketDAO = new TicketDAO();
			oradorDAO = new OradorDAO();
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher = null;
		accion = request.getParameter("accion");
		
		if (accion == null || accion.isEmpty()) {
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
			
		} else if (accion.equals("comprarticket")) {
			dispatcher = request.getRequestDispatcher("vistas/tickets.jsp");
			
		} else if (accion.equals("comprar")) {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String mail = request.getParameter("mail");
			int cant = Integer.parseInt(request.getParameter("cant"));
			int tipo = Integer.parseInt(request.getParameter("tipo"));
			float total = 0;
			if (tipo == 1) { total = cant * 200f * 0.2f; }
			if (tipo == 2) { total = cant * 200f * 0.5f; }
			if (tipo == 3) { total = cant * 200f * 0.85f; }
			
			System.out.println(nombre + " " + apellido + " - " +  mail + " " + cant + " " + " " + tipo + " " + total);
			
			Ticket ticket = new Ticket(0, nombre, apellido, mail, cant, tipo, total);
			
			ticketDAO.insertarTicket(ticket);
			
			dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
			
		} else if (accion.equals("backoffice")) {
			dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
			
		} else if (accion.equals("eliminar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);
			dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
			
		} else if (accion.equals("orador")) {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String mail = request.getParameter("tema");
			
			Orador orador = new Orador(0, nombre, apellido, mail);
			oradorDAO.insertarOrador(orador);
			
			dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
		
		} else if (accion.equals("eliminarOrador")) {
			int id = Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminarOrador(id);
			dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
			
		}
		
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
