package br.com.rt.controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import br.com.rt.model.SistemaDisciplina;

@WebListener
public class ContextListener implements ServletContextListener{

	public static final String SISTEMA_DISCIPLINA = "sistemaDisciplina";
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext context = event.getServletContext(); //pegando o evento da aplicacao
		context.setAttribute(SISTEMA_DISCIPLINA, new SistemaDisciplina());
		//
	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		ServletContext context = event.getServletContext();
		context.removeAttribute(SISTEMA_DISCIPLINA);
		
	}
	
	

}
