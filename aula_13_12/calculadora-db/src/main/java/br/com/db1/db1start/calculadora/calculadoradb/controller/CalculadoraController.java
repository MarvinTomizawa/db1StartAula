package br.com.db1.db1start.calculadora.calculadoradb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.db1.db1start.calculadora.calculadoradb.dto.CalculoDTO;
import br.com.db1.db1start.calculadora.calculadoradb.model.Calculadora;
import br.com.db1.db1start.calculadora.calculadoradb.service.CalculadoraService;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/calculadora")
public class CalculadoraController {

	@Autowired
	private CalculadoraService calculadoraService;	
	
	@PostMapping
	public Calculadora post(@RequestBody CalculoDTO calculo) {
		return calculadoraService.salvaCalculo(calculo.getNumeroUm(), calculo.getNumeroDois(), calculo.getOperacao());
	}
	
	@GetMapping
	public List<Calculadora> todosOsCalculos(){
		return calculadoraService.pegaTodosOsCalculos();
	}
}
/*
@GetMapping
public Calculadora salvaCalculadora(@RequestParam("numeroUm") double numeroUm, @RequestParam("numeroDois") double numeroDois, @RequestParam("operacao") Operacao operacao) {
	Calculadora calculadora = calculadoraService.salvaCalculo(numeroUm, numeroDois, operacao);
	return calculadora;
}*/