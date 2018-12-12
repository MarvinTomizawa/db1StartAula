package br.com.db1.db1start;

public enum Operacao {
	SOMA
	{
		@Override
		public Integer executor(Integer numero1, Integer numero2) {
			return numero1 + numero2;
		}
	},
 	SUBTRACAO {
		@Override
		public Integer executor(Integer numero1, Integer numero2) {
			return numero1 - numero2;
		}
	},
	DIVISAO {
		@Override
		public Integer executor(Integer numero1, Integer numero2) {
			return numero1 / numero2;
		}
	},
	MULTIPLICACAO {
		@Override
		public Integer executor(Integer numero1, Integer numero2) {
			return numero1 * numero2;
		}
	};
	
	public abstract Integer executor(Integer numero1, Integer numero2);
}
