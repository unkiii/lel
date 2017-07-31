package model;

import java.sql.ResultSet;
import java.sql.SQLException;

import controlador.Constants;
import controlador.GestorDB;

public class imagenesDAO {

	GestorDB gestorDB;

	public imagenesDAO() {
		gestorDB = new GestorDB(Constants.SERVER, Constants.PORT, Constants.BD);
	}

	public ResultSet obtenirImatges() {
		ResultSet rs = null;
		rs = gestorDB.consultaRegistres("SELECT * from imagenes");
		return rs;
	}

	public void editarImatges(String NIF, Usuari usu) throws SQLException {

		String consultaSQL = "UPDATE imagenes SET " + "nombre='" + usu.getNombre() + "'," + "pass='" + usu.getPasswd()
				+ "'," + "poblacion='" + usu.getPoblacion() + "'," + "fechanacimiento='" + usu.getFechanacimiento()
				+ "'," + "email='" + usu.getEmail() + "',movil='" + usu.getMovil() + "',altitud='" + usu.getAltitud()
				+ "',lng='" + usu.getLng() + "',fotperfil='" + usu.getFotperfil() + "',idbt='" + usu.getIdbt()
				+ "',pprinci='" + usu.getPprinci() + "',ilac='" + usu.getIlac() + "',pec='" + usu.getPec() + "' "
				+ "WHERE nif='" + NIF + "';";

		System.out.println(consultaSQL);
		gestorDB.modificarRegistre(consultaSQL);
	}

	public void añadirImatges(String nif, imagenes v) throws SQLException {

		String consultaSQL = "INSERT INTO imagenes (titulo, descripcion, url, subidopor) " + "VALUES ('" + v.getTitulo()
				+ "', '" + v.getDescripcion() + "', '" + v.getUrl() + "', '" + v.getIdUsuari() + "');";

		System.out.println(consultaSQL);
		gestorDB.modificarRegistre(consultaSQL);
	}

	public void tancarConn() {
		gestorDB.tancarConnexio();
	}

}