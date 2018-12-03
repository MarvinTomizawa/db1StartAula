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
	
	@Test 
	public void deveRetornarQuantidadeDeLetras() {
		Nome nome = new Nome();
		int quantidadeDeLetras = nome.retornaQuantidadeDeLetras(" DB1START ");
		
		Assert.assertEquals(8, quantidadeDeLetras);
	}
	
	@Test
	public void deveRetornarSemEspaco() {
		Nome nome = new Nome();
		String palavraSemEspaco = nome.retornaSemEspaco(" DB1START ");
		
		Assert.assertEquals("DB1START", palavraSemEspaco);
	}
	
	@Test 
	public void deveRetornasAsPrimeirasQuatroLetras() {
		Nome nome = new Nome();
		String quatroPrimeirasLetras = nome.retornaPrimeirasQuatroLetras("Marvin Tomizawa");
		
		Assert.assertEquals("Marv", quatroPrimeirasLetras);
	}

	@Test
	public void deveRetornaAPartirDaTerceiraLetra() {
		Nome nome = new Nome();
		String aPartirDaTerceiraLetra = nome.retornaAPartirDaTerceiraLetra("Marvin Massaru Tomizawa");
		
		Assert.assertEquals("vin Massaru Tomizawa", aPartirDaTerceiraLetra);
	}
	
	@Test
	public void deveRetornaAsUltimasQuatroLetras() {
		Nome nome = new Nome();
		String ultimasQuatroLetras = nome.retornaAsUltimasQuatroLetras("Marvin Massaru Tomizawa");
		
		Assert.assertEquals("zawa", ultimasQuatroLetras);
	}
}
