package br.com.db1.db1start.calculadora.calculadoradb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.db1.db1start.calculadora.calculadoradb.model.Calculadora;
import br.com.db1.db1start.calculadora.calculadoradb.model.Operacao;
import br.com.db1.db1start.calculadora.calculadoradb.service.CalculadoraService;

@RestController
@RequestMapping("/api/calculadora")
public class CalculadoraController {

	@Autowired
	private CalculadoraService calculadoraService;
	
	@GetMapping
	public Calculadora salvaCalculadora(@RequestParam("numeroUm") double numeroUm, @RequestParam("numeroDois") double numeroDois, @RequestParam("operacao") Operacao operacao) {
		Calculadora calculadora = calculadoraService.salvaCalculo(numeroUm, numeroDois, operacao);
		return calculadora;
	}
}
