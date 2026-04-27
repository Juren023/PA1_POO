package com.pweb.Model;

public class ConversionMonedasModel {

    private double monto;
    private String origen;
    private String destino;

    // Constructor
    public ConversionMonedasModel(double monto, String origen, String destino) {
        this.monto = monto;
        this.origen = origen.toLowerCase();
        this.destino = destino.toLowerCase();
    }

    // Método 
    public double convertir() {
        
        double resultado = 0;

        double tasaDolar = 3.51;   
        double tasaEuro  = 4.11;   

        switch (origen + "->" + destino) {
            case "soles->dolares":
                resultado = monto / tasaDolar;
                break;
            case "dolares->soles":
                resultado = monto * tasaDolar;
                break;
            case "soles->euros":
                resultado = monto / tasaEuro;
                break;
            case "euros->soles":
                resultado = monto * tasaEuro;
                break;
            case "dolares->euros":
                resultado = (monto * tasaDolar) / tasaEuro;
                break;
            case "euros->dolares":
                resultado = (monto * tasaEuro) / tasaDolar;
                break;
            default:
                resultado = 0;
        }

        return resultado ;
    }
}
