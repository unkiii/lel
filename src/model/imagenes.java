package model;

public class imagenes {

	private String idUsuari;
	private String titulo;
	private String descripcion;
	private String url;

	public imagenes() {
	}

	public String getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(String nif) {
		this.idUsuari = nif;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public imagenes(String titulo, String descripcion, String url) {
		super();
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.url = url;
	}

}