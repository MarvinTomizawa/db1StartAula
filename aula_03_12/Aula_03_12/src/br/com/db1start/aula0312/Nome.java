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
	
	public int retornaQuantidadeDeLetras(String nome) {
		int quantidade = 0;
		char[] palavra = nome.toCharArray();
		
		for(int x = 0; x < nome.length() ; x++ ) {
			if(palavra[x] != 32) {
				quantidade++;
			}
		}
		return quantidade;
	}
}
