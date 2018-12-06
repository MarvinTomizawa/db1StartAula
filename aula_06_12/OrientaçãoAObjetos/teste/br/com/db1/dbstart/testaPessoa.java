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
		Assert.assertEquals((Double)69.20,pessoa.getPeso(),0.0);
	}
	
	@Test
	public void deveRetornarIdadeDaPessoa() {
		Pessoa pessoa = new Pessoa();
		pessoa.setIdade(19);
		Assert.assertEquals((Integer)19, pessoa.getIdade());
	}
}
