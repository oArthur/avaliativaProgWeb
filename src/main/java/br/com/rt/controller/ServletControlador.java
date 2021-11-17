package br.com.rt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.rt.model.Disciplina;
import br.com.rt.model.SistemaDisciplina;

/**
 * Servlet implementation class ServletControlador
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletControlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");

		SistemaDisciplina sistema = (SistemaDisciplina) getServletContext()
				.getAttribute(ContextListener.SISTEMA_DISCIPLINA);

		String resposta = "menu.jsp";
		// O if a seguir pega o valor armazenado na variavel 'acao e verifica para qual
		// pagina o usuario deve ser redirecionado.
		if ("cadastrar".equals(acao)) {
			resposta = "cadastroDisciplinas.jsp";

		} else if ("adicionarMateria".equals(acao)) {
			Disciplina d = new Disciplina();
			d.setNomeDisciplina(request.getParameter("nomeDisciplina"));
			d.setNotaDisciplina(request.getParameter("notaDisciplina"));
			d.setCargaHorariaDisciplina(request.getParameter("cargaHorariaDisciplina"));
			d.setFaltasDisciplina(request.getParameter("faltasDisciplina"));
			sistema.adicionar(d);
			//adiciona na lista todas variaveis acima. 

			request.setAttribute("lista", sistema.listarDisciplinas());
			resposta = "listaDisciplinas.jsp";
			
		} else if ("listar".equals(acao)) {
			request.setAttribute("lista", sistema.listarDisciplinas());
			resposta = "listaDisciplinas.jsp";
		}else
			resposta = "menu.jsp";
		request.getRequestDispatcher(resposta).forward(request, response);
	}

}
