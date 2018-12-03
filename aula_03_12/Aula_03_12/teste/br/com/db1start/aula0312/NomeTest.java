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
	public void deveTransformarParaMinusculo() {
		Nome nome = new Nome();
		String nomeMinusculo = nome.transformarParaLetraMinuscula("TESTE UNITARIO");
		
		Assert.assertEquals("teste unitario", nomeMinusculo);
		
	}
	
	@Test
	public void deveRetornarOTamanho() {
		Nome nome = new Nome();
		int tamanhoNome = nome.tamanhoDoNome("DB1START");
		Assert.assertEquals(8,tamanhoNome);
	}
}
