<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//out.println(user);
	//out.println(pass);
	//todo: validar user y pass
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try {
		Integer okIns=st.executeUpdate("INSERT INTO usuarios (usuario,clave) VALUES ('"+user+"','"+pass+"') ");
		
		if(okIns==1) {
			response.sendRedirect("../view/inicio.jsp?mensaje=El%20usuario%20se%20agrego%20correctamente");
		} else {
			response.sendRedirect("../view/altaUsuario.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../view/altaUsuario.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");		
	}
	
	

%>