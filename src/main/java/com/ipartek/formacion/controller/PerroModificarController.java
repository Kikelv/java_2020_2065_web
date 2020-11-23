package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.PerroDAOSqlite;
import com.ipartek.formacion.pojo.Perro;

/**
 * Servlet implementation class PerroModificarController
 */
@WebServlet("/perro-modificar")
public class PerroModificarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PerroDAOSqlite dao = PerroDAOSqlite.getInstance();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PerroModificarController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String parametroId = request.getParameter("id");
		int id = Integer.parseInt(parametroId);

		Perro perro = dao.recuperar(id);

		request.setAttribute("perro", perro);

		request.getRequestDispatcher("modificaciones.jsp").forward(request, response);

		String mensaje = "";

		Perro p = new Perro();
		p.setNombre("nombre");
		p.setRaza("raza");
		p.setPeso(5);
		p.setVacunado(true);
		p.setHistoria("historia");

		try {
			dao.crear(p);
			mensaje = "Perro insertado con exito";

		} catch (Exception e) {
			e.printStackTrace();
			mensaje = "Lo sentimos pero " + p.getNombre() + " de perro ya existe";

		} finally {

			// enviarlos a la JSP
			request.setAttribute("perro", p);
			request.setAttribute("mensaje", mensaje);
			// ir a la JSP
			request.getRequestDispatcher("perro.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
