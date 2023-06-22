<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//out.println(user);
	//out.println(pass);
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"'");
	
	if(rs.next()) {
		out.println("ingreso");
	} else {
		out.println("user y pass incorrectos");
	}
	

%>