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
	
}
