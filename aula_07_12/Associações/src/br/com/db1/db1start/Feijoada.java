package br.com.db1.db1start;

public class Feijoada {
	public Feijoada(Feijao feijao) {
		this.feijao = feijao;
	}

	private Feijao feijao;
	private Bacon bacon;
	
	
	public Feijao getFeijao() {
		return feijao;
	}
	
	public Bacon getBacon() {
		return bacon;
	}

	public void setBacon(Bacon bacon) {
		this.bacon = bacon;
	}

}
