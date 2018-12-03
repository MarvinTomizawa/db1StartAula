package br.com.db1start.aula0312;

public class Nome {
	
	public String transformarParaLetraMaiuscula(String nome) {
		return nome.toUpperCase();
	}
	
	public String transformarParaLetraMinuscula(String nome) {
		return nome.toLowerCase();
	}
	
	public int tamanhoDoNome(String nome) {
		return nome.length();
	}
}
