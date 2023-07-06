package model;

/**
 * Representa un objeto usuario
 * Plantilla de la tabla usuarios
 * 
 * @author Santos
 *
 */
public class Usuario {
	private Integer idusuario;
	private String usuario;
	private String clave;
	
	//constructor
	public Usuario(Integer idusuario, String usuario, String clave) {
		super();
		this.idusuario = idusuario;
		this.usuario = usuario;
		this.clave = clave;
	}

	//getters y setters
	public Integer getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(Integer idusuario) {
		this.idusuario = idusuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}
	
	
	
	
}
