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
	
	@Test
	public void deveRetornarOTamanho() {
		Nome nome = new Nome();
		int tamanhoNome = nome.tamanhoDoNome("Teste unitario");
		Assert.assertEquals(14,tamanhoNome);
	}
}
