package br.com.db1.db1start;

public class Calculadora {
	private Integer numero1;
	private Integer numero2;
	
	public Calculadora(Integer numero1, Integer numero2) {
		this.numero1 = numero1;
		this.numero2 = numero2;
	}
	
	public Integer realizaOperacaoMatematica(Operacao operacao) {
		return operacao.executor(this.numero1, this.numero2);
	}
}
