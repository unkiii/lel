package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.videos;
import model.videosDAO;

/**
 * Servlet implementation
 */
@WebServlet(name = "addvideo", urlPatterns = { "/addvideo" })
public class addvideo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addvideo() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		videosDAO vDAO = new videosDAO();
		videos v = new videos();

		System.out.println("HELLOOOO addvideo");

		String nif = (String) request.getParameter("uNif");
		String titulo = (String) request.getParameter("titulo");
		String descripcion = (String) request.getParameter("descripcion");
		String url = (String) request.getParameter("url");

		v.setIdUsuari(nif);
		v.setTitulo(titulo);
		v.setDescripcion(descripcion);
		v.setUrl(url);

		try {
			vDAO.añadirVideo(nif, v);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error - modificarUser - GUARDAR");
		}

		response.sendRedirect("/registre/perfilVer.jsp");
	}

}
