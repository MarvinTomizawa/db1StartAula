package br.com.db1.dbstart;

import org.junit.Assert;
import org.junit.Test;

public class testaPessoa {
	@Test
	public void deveRetornarNomePessoa() {
		Pessoa pessoa = new Pessoa();
		pessoa.setNome("Marvin Tomizawa");
		Assert.assertEquals("Marvin Tomizawa",pessoa.getNome());
	}
}
