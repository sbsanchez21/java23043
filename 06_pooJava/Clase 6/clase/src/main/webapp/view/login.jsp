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
  
  <body class="bg-light">
	<div class="container ">
		<div class="border rounded m-2 bg-white">
			<div class="text-center fs-3 my-4">Login</div>
			
			<div class="d-flex justify-content-center">
				<form action="../controller/checkLogin.jsp" method="post">
					<input type="email" name="user" class="form-control mb-3" placeholder="usuario" required>
					<input type="password" name="pass" class="form-control mb-3" placeholder="contraseņa" required>
					<input type="submit" value="Enviar" class="btn btn-primary mb-3">
				</form>
			</div>
			
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
	</div>    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>