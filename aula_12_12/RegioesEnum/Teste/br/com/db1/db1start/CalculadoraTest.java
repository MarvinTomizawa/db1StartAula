package br.com.db1.db1start;

import org.junit.Assert;
import org.junit.Test;

public class CalculadoraTest {
	@Test
	public void deveSomar() {
		Calculadora calculadora = new Calculadora(6,3);
		int resultado = calculadora.realizaOperacaoMatematica(Operacao.SOMA);
		Assert.assertEquals( 9, resultado);
	}
	
	@Test
	public void deveSubtrair() {
		Calculadora calculadora = new Calculadora(6,3);
		int resultado = calculadora.realizaOperacaoMatematica(Operacao.SUBTRACAO);
		Assert.assertEquals( 3, resultado);
	}
	
	@Test
	public void deveMultiplicar() {
		Calculadora calculadora = new Calculadora(6,3);
		int resultado = calculadora.realizaOperacaoMatematica(Operacao.MULTIPLICACAO);
		Assert.assertEquals( 18, resultado);
	}
	
	@Test
	public void deveDividir() {
		Calculadora calculadora = new Calculadora(6,3);
		int resultado = calculadora.realizaOperacaoMatematica(Operacao.DIVISAO);
		Assert.assertEquals( 2, resultado);
	}
}
