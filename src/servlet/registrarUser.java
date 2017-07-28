package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuari;
import model.UsuariDAO;

/**
 * Servlet implementation
 */
@WebServlet(name = "registrarUser", urlPatterns = { "/registrarUser" })
public class registrarUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registrarUser() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UsuariDAO uDAO = new UsuariDAO();
		Usuari u = new Usuari();

		System.out.println("HELLOOOO REGISTRAR");

		String nif = (String) request.getParameter("input-21");
		String nombre = (String) request.getParameter("input-25");
		String pass = (String) request.getParameter("input-26");
		String poblacion = (String) request.getParameter("input-28");
		String idbt = (String) request.getParameter("input-32");
		String pprinci = (String) request.getParameter("input-33");
		double lat = Double.parseDouble(request.getParameter("alti"));
		double lon = Double.parseDouble(request.getParameter("longi"));
		System.out.println("EL DNI EN SERLVET ---> " + nif);
		u.setNIF(nif);
		u.setNombre(nombre);
		u.setPasswd(pass);
		String poble = poblacion.replaceAll(", ", "/");
		u.setPoblacion(poble);
		u.setAltitud(lat);
		u.setLng(lon);
		u.setIdbt(idbt);
		u.setPprinci(pprinci);

		try {
			uDAO.registrarUsuari(u);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error - REGISTRAR - GUARDAR");
			System.out.println("El error es: " + e);
		}

		response.sendRedirect("/registre/login.jsp");
	}

}
