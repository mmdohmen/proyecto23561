<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="misClases.TicketDAO" %> 
<%@page import="misClases.Ticket" %> 
<%@page import="java.util.List" %> 


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Back Office</title>
<!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- archivo de estilos -->
    <link rel="stylesheet" href="css/tickets">
</head>

<body>

<div class="container-fluid">

 <!-- barra de navegacion -------------------------------------------------------------------------------->
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: rgb(70,70,70);">
            <div class="container-fluid">
                <a class="navbar-brand" href="FrontController">Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse flex-row-reverse" id="navbarSupportedContent">
                    <div class="navbar-nav">
                        <a class="nav-link" href="FrontController" style="color:silver">La conferencia</a>
                        <a class="nav-link" href="FrontController#oradores" style="color:silver">Los oradores</a>
                        <a class="nav-link" href="FrontController#lugar" style="color:silver">El lugar y la fecha</a>
                        <a class="nav-link" href="FrontController#conviertete" style="color:silver">Conviertete en orador</a>
                        <a class="nav-link" href="FrontController?accion=comprarticket" style="color:lightgreen">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </nav>
        
    <br> 
	<h1 class="text-primary text-center">TICKETS vendidos</h1>
	<br>
	<div class="container">
		<table class="table table-hover table-sm">
			<thead>
				<th>id</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>mail</th>
				<th>cantidad</th>
				<th>tipo</th>
				<th>total</th>
				<th class="text-center">eliminar</th>
			</thead>
			
			<tbody>
			<% 
			List<Ticket> listaTickets = null;
			TicketDAO ticket = new TicketDAO();
			listaTickets = ticket.listarTickets();
			System.out.println(listaTickets);
			
			float totalVendido = 0;
			String rutaEliminar;
			String tipoTicketTexto;
			
			for (int i=0; i<listaTickets.size() ; i++) {
				rutaEliminar = "FrontController?accion=eliminar&id=" + listaTickets.get(i).getId();
				tipoTicketTexto = "";
				if (listaTickets.get(i).getTipo() == 1) { tipoTicketTexto = "estudiante"; }
				else if (listaTickets.get(i).getTipo() == 2) { tipoTicketTexto = "trainee"; }
				else if (listaTickets.get(i).getTipo() == 3) { tipoTicketTexto = "junior"; }
			%>
				<tr>
					<td> <%= listaTickets.get(i).getId() %> </td>
					<td> <%= listaTickets.get(i).getNombre() %> </td>
					<td> <%= listaTickets.get(i).getApellido() %> </td>
					<td> <%= listaTickets.get(i).getMail() %> </td>
					<td> <%= listaTickets.get(i).getCant() %> </td>
					<td> <%= tipoTicketTexto %> </td>
					<td> <%= listaTickets.get(i).getTotal() %></td>
					<td class="text-center"> <a href=<%= rutaEliminar %>> 
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill text-danger text-center" viewBox="0 0 16 16">
                    <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                    </svg> </a> </td>
                    <td></td>
				</tr>
			<% 
				totalVendido += listaTickets.get(i).getTotal();
			} 
			%>
				<tr><td></td></tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><mark>TOTAL</mark></td>
					<td class="text-primary"> <b> <%= totalVendido %> </b></td>
				</tr>
				
			
			</tbody>
		</table>
	</div>

</div>

<!-- BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>


</body>
</html>