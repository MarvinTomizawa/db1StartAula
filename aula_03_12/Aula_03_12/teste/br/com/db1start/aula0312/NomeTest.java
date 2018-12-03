package br.com.db1start.aula0312;

import org.junit.Assert;
import org.junit.Test;

public class NomeTest {
	
	@Test
	public void deveTransformarParaLetraMaiuscula() {
		Nome nome = new Nome();
		String valorTransformado = nome.transformarParaLetraMaiuscula("Teste unitario");
		Assert.assertEquals("TESTE UNITARIO", valorTransformado);
	}
}
