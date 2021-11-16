package br.com.rt.model;

public class Disciplina {

	private int codDisciplina;
	private String nomeDisciplina;
	private String notaDisciplina;
	private String faltasDisciplina;
	private String cargaHorariaDisciplina;
	
	public int getCodDisciplina() {
		return codDisciplina;
	}
	public void setCodDisciplina(int codDisciplina) {
		this.codDisciplina = codDisciplina;
	}
	public String getNomeDisciplina() {
		return nomeDisciplina;
	}
	public void setNomeDisciplina(String nomeDisciplina) {
		this.nomeDisciplina = nomeDisciplina;
	}
	public String getNotaDisciplina() {
		return notaDisciplina;
	}
	public void setNotaDisciplina(String notaDisciplina) {
		this.notaDisciplina = notaDisciplina;
	}
	public String getFaltasDisciplina() {
		return faltasDisciplina;
	}
	public void setFaltasDisciplina(String faltasDisciplina) {
		this.faltasDisciplina = faltasDisciplina;
	}
	public String getCargaHorariaDisciplina() {
		return cargaHorariaDisciplina;
	}
	public void setCargaHorariaDisciplina(String cargaHorariaDisciplina) {
		this.cargaHorariaDisciplina = cargaHorariaDisciplina;
	}
	
	//Transforma a nota em inteiro e verifica se é maior ou igual a 5, caso seja ele retorna 'aprovado' caso contrario retorna reprovado.
	public String getSituacao() {
		if (Integer.parseInt(notaDisciplina) >= 5) {
			return "Aprovado";
		}else {
			return "Reprovado";
		}
	}
	//Responsavel por verificar se a situacao e aprovado ou reprovado e retorna uma cor para a table.
	public String getCorSituacao() {
		if (getSituacao().equals("Aprovado")) {
			return "bg-success";
		}else {
			return "bg-danger";
		}
	}
	
	
}
