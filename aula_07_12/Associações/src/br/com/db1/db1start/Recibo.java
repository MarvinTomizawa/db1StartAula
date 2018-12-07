package br.com.db1.db1start;

public class Recibo {
	
	public Recibo(Pessoa emitente, Pessoa referente){ // Composição0
		this.setEmitente(emitente);
		this.setReferente(referente);
	}

	private Pessoa emitente;
	private Pessoa referente;
	
	public Pessoa getEmitente() {
		return emitente;
	}
	
	public void setEmitente(Pessoa emitente) {
		this.emitente = emitente;
	}

	public Pessoa getReferente() {
		return referente;
	}

	public void setReferente(Pessoa referente) {
		this.referente = referente;
	}
	
}
