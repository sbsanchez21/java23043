<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String id=request.getParameter("id");
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//out.println(user);
	//out.println(pass);
	//todo: validar user y pass
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try {
		Integer okUpd=st.executeUpdate("UPDATE usuarios SET usuario='"+user+"', clave='"+pass+"' WHERE idusuario="+id);
		
		if(okUpd==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/editUsuario.jsp?mensaje=No%20se%20puedo%20modificar%20el%20usuario");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/editUsuario.jsp?mensaje=No%20se%20puedo%20modificar%20el%20usuario");
	}
	
	

%>