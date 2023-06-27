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
  	
  	<% 
  	String id=request.getParameter("id");
  	
  	ConexionDB con=new ConexionDB();
  	Statement st=con.conectar();
  	ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE idusuario="+id);
  	
  	if(!rs.next()) {
  		response.sendRedirect("error.jsp?mensaje=No%20exite%20el%20usuario");
  	}
  	
  	Integer idUsuario=rs.getInt("idusuario");
  	String usuario=rs.getString("usuario");
  	String clave=rs.getString("clave");
  	
  	%>
  	
	<div class="container ">
		<div class="border rounded m-2 ">
			<div class="text-center fs-3 my-4">Modificar Usuario</div>
			
			<div class="d-flex justify-content-center">
				<form action="../controller/addUsuario.jsp" method="post">
					<input type="email" name="user" id="user" onkeyup="validarUser()" class="form-control mb-3" placeholder="usuario" required value="<% out.println(usuario); %>">
	                <div class="input-group mb-3">
	                    <input type="password" name="pass" id="pass" onkeyup="validarPass()" class="form-control" placeholder="Constraseña" aria-label="Username" aria-describedby="basic-addon1" value="<% out.println(clave); %>">
	                    <span class="input-group-text" id="basic-addon1">
	                        <a href="#">
	                            <i class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
	                        </a>
	                    </span>
	                </div>
	                <div class="input-group mb-3">
	                    <input type="password" id="repPass" name="repPass" onkeyup="compararPass()" class="form-control" placeholder="Constraseña" aria-label="Username" aria-describedby="basic-addon1" value="<% out.println(clave); %>">
	                    <span class="input-group-text" id="basic-addon1">
	                        <a href="#">
	                            <i class="bi bi-eye-slash-fill" id="icono2" onclick="mostrarPass()"></i>
	                        </a>
	                    </span>
	                </div>	                
	                  					

					<input type="submit" value="Enviar" class="btn btn-primary mb-3">
				</form>
			</div>
			<div id="mensaje"></div>
			<% 
				String mensaje=request.getParameter("mensaje");
				if(mensaje!=null) {
					out.println("<div class='bg-danger text-center p-1 rounded'>");
					out.println(mensaje);
					out.println("</div>");
				}	
			%>			
		</div>
	</div>    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    <script src="js/registro.js"></script>
  </body>
</html>