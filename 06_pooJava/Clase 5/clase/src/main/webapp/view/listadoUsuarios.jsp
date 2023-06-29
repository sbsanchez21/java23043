<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  
  <body>
  	<jsp:include page="menu.jsp"/>
  	
	<div class="container">
		<div class="text-center fs-3 my-4">Listado Usuarios</div>
		
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='bg-danger text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}	
		%>
				
		<table class="table table-striped text-center">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#ID</th>
		      <th scope="col">Usuario</th>
		      <th scope="col">Contraseña</th>
		      <th scope="col">Operaciones</th>
		    </tr>
		  </thead>
		  <tbody>
			<!-- dentro de estas etiquetas podemos programar en java -->
			<% 
			//conectarnos a la db, traer la tabla usuarios y generar un html para enviar al usuario
			
			//TODO: poner todo dentro de un try catch
			
			//traer el archivo/clase conexionDb
			ConexionDB conex=new ConexionDB();
			
			//conecto a la db y devuel un objeto statment que es una instancia de db
			Statement st=conex.conectar();
			
			//le hago la consulta sql, traigo la tabla usuarios
			ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
			
			while(rs.next()) {
				out.println("<tr>");
				
				out.println("<td>");
				Integer id=rs.getInt("idusuario");
				out.println(id);
				out.println("</td>");

				out.println("<td>");
				out.println(rs.getString("usuario"));
				out.println("</td>");
				
				out.println("<td>");
				out.println(rs.getString("clave"));
				out.println("</td>");
				
				out.println("<td>");
				out.println("<a href='editUsuario.jsp?id="+id+"'><i class='bi bi-pencil-fill m-1'></i></a>");
				out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' data-bs-whatever='"+id+"'><i class='bi bi-trash-fill m-1'></i></a>");
				out.println("</td>");

				
				out.println("</tr>");
				
			}
			
			%>		
			
			
		   
		  </tbody>
		</table>
		
		

		
	</div>    

	<div class="modal fade" id="delModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">New message</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form>
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">Recipient:</label>
	            <input type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">Message:</label>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Send message</button>
	      </div>
	    </div>
	  </div>
	</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/listUsu.js"></script>
  </body>
</html>