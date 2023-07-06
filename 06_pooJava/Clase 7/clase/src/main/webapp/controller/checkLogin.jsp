<%@page import="dao.UsuarioDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//out.println(user);
	//out.println(pass);
	
	UsuarioDAO dao=new UsuarioDAO();
	Boolean usuValido=dao.validarUsuYPass(user, pass);
	
	
	if(usuValido) {
		response.sendRedirect("../view/inicio.jsp");
	} else {
		response.sendRedirect("../view/login.jsp?mensaje=Usuario%20o%20password%20incorrectos");
	}
	

%>