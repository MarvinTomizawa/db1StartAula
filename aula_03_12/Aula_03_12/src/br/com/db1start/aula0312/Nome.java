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
	
	public String retornaSemEspaco(String nome) {
		return nome.replaceAll(" ", "");
	}
	
	public String retornaPrimeirasQuatroLetras(String nome) {
		return nome.substring(0, 4);
	}
	
	public String retornaAPartirDaTerceiraLetra(String nome) {
		return nome.substring(3);
	}
	
	public String retornaAsUltimasQuatroLetras(String nome) {
		return nome.substring(nome.length() - 4);
	}
	
	public String substuiPrimeiroNomePorAluno(String nome) {
		String novoNome = "";
		char[] palavra = nome.toCharArray();
		for(int x = 0; x < nome.length(); x++) {
			if(palavra[x] == 32) {
				novoNome = nome.substring(x);
				break;
			}
		}
		String nomeSubstituido = "Aluno";
		return nomeSubstituido.concat(novoNome);
	}
	
	public String[] separaTextos(String nome) {
		String[] nomeSeparado = new String[5];
		nomeSeparado = nome.split(",");
		return nomeSeparado;
	}
	
	public int quantidadeDeVogais(String nome) {
		int quantidade = 0;
		char[] palavra = nome.toCharArray();
		
		for(int x = 0; x <nome.length(); x++) {
			if(	palavra[x] == 'a'||palavra[x] == 'e'||palavra[x] == 'i'||palavra[x] == 'o'||palavra[x] == 'u'||
				palavra[x] == 'A'||palavra[x] == 'E'||palavra[x] == 'I'||palavra[x] == 'O'||palavra[x] == 'U') {
				quantidade++;
			}
		}
		return quantidade;
	}
}
