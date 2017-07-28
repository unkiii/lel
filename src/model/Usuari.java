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
	private String pprinci;
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

	public Usuari(String nombre, String pass, String poblacion, String fechanacimiento, String email, String movil,
			String fotperfil, String idbt, String pprinci, String ilac, String pec) {
		super();
		this.nombre = nombre;
		this.passwd = pass;
		this.poblacion = poblacion;
		this.fechanacimiento = fechanacimiento;
		this.email = email;
		this.movil = movil;
		this.fotperfil = fotperfil;
		this.idbt = idbt;
		this.pprinci = pprinci;
		this.ilac = ilac;
		this.pec = pec;
	}

	public String getPprinci() {
		return pprinci;
	}

	public void setPprinci(String pprinci) {
		this.pprinci = pprinci;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPoblacion() {
		return poblacion;
	}

	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}

	public String getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMovil() {
		return movil;
	}

	public void setMovil(String movil) {
		this.movil = movil;
	}

	public String getFotperfil() {
		return fotperfil;
	}

	public void setFotperfil(String fotperfil) {
		this.fotperfil = fotperfil;
	}

	public String getIdbt() {
		return idbt;
	}

	public void setIdbt(String idbt) {
		this.idbt = idbt;
	}

	public String getIlac() {
		return ilac;
	}

	public void setIlac(String ilac) {
		this.ilac = ilac;
	}

	public String getPec() {
		return pec;
	}

	public void setPec(String pec) {
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