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
 * Servlet implementation class afegirTutors
 */
@WebServlet("/modificarUser")
public class modificarUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public modificarUser() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UsuariDAO uDAO = new UsuariDAO();
		Usuari u = new Usuari();

		System.out.println("HELLOOOO modificar");

		String nif = (String) request.getParameter("uNif");
		String nombre = (String) request.getParameter("input-25");
		String pass = (String) request.getParameter("input-26");
		String años = (String) request.getParameter("input-27");
		String poblacion = (String) request.getParameter("input-28");
		String movil = (String) request.getParameter("input-30");
		String email = (String) request.getParameter("input-29");
		String imagen = (String) request.getParameter("input-20");
		String idbt = (String) request.getParameter("input-32");
		String pprinci = (String) request.getParameter("input-33");
		String ilac = (String) request.getParameter("input-34");
		String pec = (String) request.getParameter("input-35");

		u.setNombre(nombre);
		u.setPasswd(pass);
		u.setFechanacimiento(años);
		u.setPoblacion(poblacion);
		u.setMovil(movil);
		u.setEmail(email);
		u.setFotperfil(imagen);
		u.setIdbt(idbt);
		u.setPprinci(pprinci);
		u.setIlac(ilac);
		u.setPec(pec);

		try {
			uDAO.modificarUsuari(nif, u);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error - modificarUser - GUARDAR");
		}

		response.sendRedirect("/registre/perfilVer.jsp");
	}

}
