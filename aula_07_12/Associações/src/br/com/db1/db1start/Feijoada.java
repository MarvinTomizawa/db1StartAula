package br.com.db1.db1start;

public class Feijoada {
	public Feijoada(Feijao feijao) {
		this.setFeijao(feijao);
	}
	
	public Feijao getFeijao() {
		return feijao;
	}

	public void setFeijao(Feijao feijao) {
		this.feijao = feijao;
	}

	private Feijao feijao;
}
