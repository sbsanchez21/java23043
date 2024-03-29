<!doctype html>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
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
				
		<button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addModal">
		  Agregar Usuario
		</button>
				
		<table class="table table-striped text-center">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#ID</th>
		      <th scope="col">Usuario</th>
		      <th scope="col">Contrase�a</th>
		      <th scope="col">Operaciones</th>
		    </tr>
		  </thead>
		  <tbody>
			<!-- dentro de estas etiquetas podemos programar en java -->
			<% 
			//conectarnos a la db, traer la tabla usuarios y generar un html para enviar al usuario
			
			try {
				UsuarioDAO dao=new UsuarioDAO();
				List<Usuario> listUsu=dao.listarUsuarios();
				
				for(Usuario usu: listUsu) {
					out.println("<tr>");
					
					out.println("<td>");
					Integer id=usu.getIdusuario();
					out.println(id);
					out.println("</td>");

					out.println("<td>");
					String user=usu.getUsuario();
					out.println(user);
					out.println("</td>");
					
					out.println("<td>");
					out.println(usu.getClave());
					out.println("</td>");
					
					out.println("<td>");
					out.println("<a href='editUsuario.jsp?id="+id+"'><i class='bi bi-pencil-fill m-1'></i></a>");
					out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#delModal' idUsuario='"+id+"' user='"+user+"'><i class='bi bi-trash-fill m-1'></i></a>");
					out.println("</td>");

					
					out.println("</tr>");
				}
				
						
			} catch (Exception e) {
				out.println("Error en cargar usuarios");
			}
			

			
			%>		
			
			
		   
		  </tbody>
		</table>
	</div>    

	<div class="modal fade" id="delModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form action="../controller/delUsuario.jsp" method="post">
	      		<input type="hidden" name="idUser" id="idUser">
		      <div class="modal-body text-center">
		        
		          <div class="mb-3">
		            <label for="recipient-name" class="col-form-label">�Desea eliminar el usuario?</label>
		            <div id="dataUser" class="text-danger"></div>
		          </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
		        <input type="submit" class="btn btn-primary" value="Eliminar">

		      </div>
	        </form>
	    </div>
	  </div>
	</div>
	
	
	<div class="modal fade" id="addModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="d-flex justify-content-center">
				<form action="../controller/addUsuario.jsp" method="post">
					<input type="email" name="user" id="user" onkeyup="validarUser()" class="form-control mb-3" placeholder="usuario" required>
	                <div class="input-group mb-3">
	                    <input type="password" name="pass" id="pass" onkeyup="validarPass()" class="form-control" placeholder="Constrase�a" aria-label="Username" aria-describedby="basic-addon1">
	                    <span class="input-group-text" id="basic-addon1">
	                        <a href="#">
	                            <i class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
	                        </a>
	                    </span>
	                </div>
	                <div class="input-group mb-3">
	                    <input type="password" id="repPass" name="repPass" onkeyup="compararPass()" class="form-control" placeholder="Constrase�a" aria-label="Username" aria-describedby="basic-addon1">
	                    <span class="input-group-text" id="basic-addon1">
	                        <a href="#">
	                            <i class="bi bi-eye-slash-fill" id="icono2" onclick="mostrarPass()"></i>
	                        </a>
	                    </span>
	                </div>	                
	                  					

					<input type="submit" value="Enviar" class="btn btn-primary mb-3">
				</form>
			</div>
	    </div>
	  </div>
	</div>	

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/listUsu.js"></script>
  </body>
</html>