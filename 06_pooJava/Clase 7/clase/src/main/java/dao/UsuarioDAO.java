package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionDB;
import model.Usuario;

/**
 * Clase que concentra todas las consultas, eliminaciones, modificaciones
 * y agregados a la tabla Usuarios
 * 
 * @author Santos
 *
 */
public class UsuarioDAO {

	/**
	 * Se conecta a la db, trae todos los usuarios con sql
	 * y devuelve un listado de objetos Usuario
	 * @throws SQLException 
	 */
	public List<Usuario> listarUsuarios() throws SQLException {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
		
		List<Usuario> listUsu=new ArrayList<Usuario>();
		while (rs.next()) {
			Usuario usu=new Usuario(rs.getInt("idusuario"), rs.getString("usuario"), rs.getString("clave"));
			
			listUsu.add(usu);
		}
		
		return listUsu;
	}
	
	public Boolean validarUsuYPass(String user, String pass) throws SQLException {
		ConexionDB conex=new ConexionDB();
		Statement st=conex.conectar();
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"'");
		
		if(rs.next()) {
			return true;
		} else {
			return false;
		}
		

	}
}
