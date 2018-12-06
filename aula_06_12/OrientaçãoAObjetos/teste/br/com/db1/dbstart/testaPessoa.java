package br.com.db1.dbstart;

import org.junit.Assert;
import org.junit.Test;

public class testaPessoa {
	@Test
	public void deveRetornarNomeDaPessoa() {
		Pessoa pessoa = new Pessoa();
		pessoa.setNome("Marvin Tomizawa");
		Assert.assertEquals("Marvin Tomizawa",pessoa.getNome());
	}
	
	@Test
	public void deveRetornarPesoDaPessoa() {
		Pessoa pessoa = new Pessoa();
		pessoa.setPeso(69.20);
		Assert.assertEquals(69.20,pessoa.getPeso(),0.0);
	}
}
