<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String idUser=request.getParameter("idUser");
	
	
	try {
		ConexionDB conex=new ConexionDB();
		Statement st=conex.conectar();
		
		Integer okDel=st.executeUpdate("DELETE FROM usuarios WHERE idusuario="+idUser);
		
		if(okDel==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=No%20se%20puedo%20eliminar%20el%20usuario");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=No%20se%20puedo%20eliminar%20el%20usuario");		
	}
	
	

%>