package br.com.db1start.aula0312;

public class Calculadora {
	
	public int somar(int numero1, int numero2) {
		return numero1 + numero2;
	}
	
	public int subtrair(int numero1, int numero2) {
		return numero1 - numero2;
	}
	 
	public int multiplicar(int numero1, int numero2) {
		return numero1 * numero2;
	}
	
	public float dividir(int numero1, int numero2) {
		return numero1 / numero2;
	}
	
	public boolean ehPar(int numero) {
		return numero % 2 == 0;
	}

	public int retornaMaior(int numero1, int numero2) {
		return numero1 > numero2 ? numero1 : numero2;
	}
	
	public int[] retornaImpares(int valorInicial) {
		int[] impares = new int[50];
		int contador = 0;
		
		valorInicial = valorInicial %2 == 0 ? valorInicial +1 : valorInicial;
		
		for(int x = valorInicial; x < 100; x = x+2) {
			impares[contador] = x;
			contador++;
		}
		
		return impares;
	}
	
	public double menorValorDouble(double valor1, double valor2) {
		return valor1 < valor2 ? valor1 : valor2;
	}
	
	
	public double menorValorDouble(double valor1, double valor2, double valor3) {
		double menorValorEntreOsPrimeiros = valor1 < valor2 ? valor1 : valor2;
		return menorValorEntreOsPrimeiros < valor3 ? menorValorEntreOsPrimeiros : valor3;
	}
	
}
