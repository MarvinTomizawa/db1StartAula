package br.com.db1.db1start.calculadora.calculadoradb.model;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
public class CalculadoraTest {
	@Test
	public void deveSomar() {
		Calculadora calculadora = new Calculadora(10,20,Operacao.SOMA);
		Assert.assertEquals(30,calculadora.getResultado(), 0.0);
	}
	
	@Test
	public void deveSubtrair() {
		Calculadora calculadora = new Calculadora(10,20,Operacao.SUBTRACAO);
		Assert.assertEquals(-10,calculadora.getResultado(), 0.0);
	}
	
	@Test
	public void deveMultiplicar() {
		Calculadora calculadora = new Calculadora(20,10,Operacao.DIVISAO);
		Assert.assertEquals(2,calculadora.getResultado(), 0.0);
	}
	
	@Test
	public void deveDividir() {
		Calculadora calculadora = new Calculadora(10,20,Operacao.MULTIPLICACAO);
		Assert.assertEquals(200,calculadora.getResultado(), 0.0);
	}
}
