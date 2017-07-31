package model;

import java.sql.ResultSet;
import java.sql.SQLException;

import controlador.Constants;
import controlador.GestorDB;

public class videosDAO {

	GestorDB gestorDB;

	public videosDAO() {
		gestorDB = new GestorDB(Constants.SERVER, Constants.PORT, Constants.BD);
	}

	public ResultSet obtenirVideos() {
		ResultSet rs = null;
		rs = gestorDB.consultaRegistres("SELECT * from videos");
		return rs;
	}

	public void editarVideo(String NIF, Usuari usu) throws SQLException {

		String consultaSQL = "UPDATE videos SET " + "nombre='" + usu.getNombre() + "'," + "pass='" + usu.getPasswd()
				+ "'," + "poblacion='" + usu.getPoblacion() + "'," + "fechanacimiento='" + usu.getFechanacimiento()
				+ "'," + "email='" + usu.getEmail() + "',movil='" + usu.getMovil() + "',altitud='" + usu.getAltitud()
				+ "',lng='" + usu.getLng() + "',fotperfil='" + usu.getFotperfil() + "',idbt='" + usu.getIdbt()
				+ "',pprinci='" + usu.getPprinci() + "',ilac='" + usu.getIlac() + "',pec='" + usu.getPec() + "' "
				+ "WHERE nif='" + NIF + "';";

		System.out.println(consultaSQL);
		gestorDB.modificarRegistre(consultaSQL);
	}

	public void añadirVideo(String nif, videos usu) throws SQLException {

		String consultaSQL = "INSERT INTO videos (titulo, descripcion, url, subidopor) " + "VALUES ('" + usu.getTitulo()
				+ "', '" + usu.getDescripcion() + "', '" + usu.getUrl() + "', '" + usu.getIdUsuari() + "');";

		System.out.println(consultaSQL);
		gestorDB.modificarRegistre(consultaSQL);
	}

	public void tancarConn() {
		gestorDB.tancarConnexio();
	}

}