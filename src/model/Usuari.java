package model;

public class Usuari {

	private int idUsuari;
	private String NIF;
	private String passwd;
	private String nom;
	private int permis;
	private String nombre;
	private String poblacion;
	private String fechanacimiento;
	private String email;
	private String movil;
	private String fotperfil;
	private String idbt;
	private String ilac;
	private String pec;

	public Usuari() {
	}

	public Usuari(int idUsuari, String nIF, String passwd, String nom, int permis) {
		super();
		this.idUsuari = idUsuari;
		NIF = nIF;
		this.passwd = passwd;
		this.nom = nom;
		this.permis = permis;
	}

	public Usuari(String nif, String pass, String nom) {
		super();
		this.NIF = nif;
		this.passwd = pass;
		this.nom = nom;
	}

	public Usuari(String nombre, String poblacion, String fechanacimiento, String email, String movil, String fotperfil,
			String idbt, String ilac, String pec) {
		super();
		this.nombre = nombre;
		this.poblacion = poblacion;
		this.fechanacimiento = fechanacimiento;
		this.email = email;
		this.movil = movil;
		this.fotperfil = fotperfil;
		this.idbt = idbt;
		this.ilac = ilac;
		this.pec = pec;
	}

	public int getPermis() {
		return permis;
	}

	public void setPermis(int permis) {
		this.permis = permis;
	}

	public int getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(int idUsuari) {
		this.idUsuari = idUsuari;
	}

	public String getNIF() {
		return NIF;
	}

	public void setNIF(String nIF) {
		NIF = nIF;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

}