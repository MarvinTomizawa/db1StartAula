package br.com.db1.db1start;

import java.util.List;

public class Pessoa {
	private List<Endereco> enderecos;// Um ou muitos 1 - 1*

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}
	
}
