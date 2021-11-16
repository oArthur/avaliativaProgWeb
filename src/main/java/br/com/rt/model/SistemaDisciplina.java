package br.com.rt.model;

import java.util.ArrayList;
import java.util.List;

public class SistemaDisciplina {

	private List<Disciplina> disciplinas = new ArrayList<Disciplina>();
	
	public void adicionar(Disciplina d) { // Adicionando uma nova disciplina na lista.
		disciplinas.add(d);
	}
	public List<Disciplina> listarDisciplinas(){
		return disciplinas; // retorna as disciplinas cadastradas.
	}
}
