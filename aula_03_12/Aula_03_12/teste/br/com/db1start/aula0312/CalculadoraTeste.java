package br.com.db1start.aula0312;

import org.junit.Assert;
import org.junit.Test;

public class CalculadoraTeste {
	
	@Test
	public void deveSomar() {
		Calculadora calculadora = new Calculadora();
		int resultadoDaSoma = calculadora.somar(5, 20);
		
		Assert.assertEquals(25, resultadoDaSoma);
	}
	
	@Test
	public void deveSubtrair() {
		Calculadora calculadora = new Calculadora();
		int resultadoDaSubtracao = calculadora.subtrair(20,5 );
		
		Assert.assertEquals(15,resultadoDaSubtracao);
	}
	
	@Test
	public void deveMultiplicar() {
		Calculadora calculadora = new Calculadora();
		int resultadoDaMultiplicacao = calculadora.multiplicar(5, 6);
		
		Assert.assertEquals(30, resultadoDaMultiplicacao);
	}
	
	@Test
	public void deveDividir() {
		Calculadora calculadora = new Calculadora();
		float resultadoDaDivisao = calculadora.dividir(10, 5);
		
		Assert.assertEquals(2f, resultadoDaDivisao, 0.001 );
		
	}
	
	@Test
	public void deveVerificarSeEhPar() {
		Calculadora calculadora = new Calculadora();
		boolean ehPar = calculadora.ehPar(4);
		
		Assert.assertEquals(true, ehPar);
	}
	
	@Test
	public void deveVerificarSeEhImpar() {
		Calculadora calculadora = new Calculadora();
		boolean ehPar = calculadora.ehPar(5);
		
		Assert.assertEquals(false, ehPar);
	}
	
	@Test
	public void deveRetornarMaior() {
		Calculadora calculadora = new Calculadora();
		int maiorNumero = calculadora.retornaMaior(10, 2);
		
		Assert.assertEquals(10, maiorNumero);
	}
}
