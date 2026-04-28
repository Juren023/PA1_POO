package com.pweb.Model;

public class NumerosRomanosModel {

    private int numero;
    private String romano;

    // Constructor con ambos parámetros
    public NumerosRomanosModel(int numero, String romano) {
        this.numero = numero;
        this.romano = romano;
    }

    // Método: entero → romano
    public String convertirANumerosRomanos() {
        if (numero <= 0) return ""; // evita errores con valores inválidos
        String[] romanos = {"M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"};
        int[] valores = {1000,900,500,400,100,90,50,40,10,9,5,4,1};
        String resultado = "";
        int temp = numero;

        for (int i = 0; i < valores.length; i++) {
            while (temp >= valores[i]) {
                resultado += romanos[i];
                temp -= valores[i];
            }
        }
        return resultado;
    }

    // Método: romano → entero
    public int convertirADecimal() {
        if (romano == null || romano.isEmpty()) return 0;
        int resultado = 0;
        int i = 0;

        while (i < romano.length()) {
            int valor = valorRomano(romano.charAt(i));
            if (i + 1 < romano.length()) {
                int siguiente = valorRomano(romano.charAt(i + 1));
                if (siguiente > valor) {
                    resultado += (siguiente - valor);
                    i += 2;
                    continue;
                }
            }
            resultado += valor;
            i++;
        }
        return resultado;
    }

    private int valorRomano(char c) {
        switch (c) {
            case 'I': return 1;
            case 'V': return 5;
            case 'X': return 10;
            case 'L': return 50;
            case 'C': return 100;
            case 'D': return 500;
            case 'M': return 1000;
            default: return 0;
        }
    }
}
