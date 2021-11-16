package br.com.rt.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String USUARIO = "user";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter resposta = response.getWriter();
		
		resposta.write("<html><body>");
		
		String user = request.getParameter(USUARIO);
		String pass = request.getParameter("password");
		
		if (autentica(user,pass)) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute(USUARIO, user);
			
			response.sendRedirect(request.getContextPath()+ "/menu.jsp");
		} else {
			resposta.write("Senha ou usuario incorretos.");
		}
		
		resposta.write("</body></html>");
	}
	
	
	private boolean autentica(String usuario, String senha) {
		// se o usuario for 'professor' e a senha for 'Progweb2021' ele cria uma sessao e redireciona para a pagina principal
		if (usuario.equals("professor") && senha.equals("Progweb2021")) {
			return true;
		}
		
		return false;
	}


}