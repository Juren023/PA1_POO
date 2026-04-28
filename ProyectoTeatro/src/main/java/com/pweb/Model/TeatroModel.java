package com.pweb.Model;

public class TeatroModel {

    // Atributos
    private String perfil;
    private String dia;
    private double numeroEntradas;

    // Constructor
    public TeatroModel(String perfil, String dia, double numeroEntradas) {
        this.perfil = perfil;
        this.dia = dia;
        this.numeroEntradas = numeroEntradas;
    }

    // Métodos
    public String definirRango() {
        String rango = "desconocido";

        switch (perfil) {
            case "niño":
                rango = "0 - 8 años";
                break;
            case "adolescente":
                rango = "9 - 12 años";
                break;
            case "adulto":
                rango = "13 - 59 años";
                break;
            case "adultoMayor":
                rango = "60+ años";
                break;
            default:
                rango = "desconocido";
        }
        return rango;
    }

    public int definirCantidadEntradas() {
        return (int) numeroEntradas;
    }

    public double definirPrecios() {
        double precio = 0.0;
        switch (perfil) {
            case "niño":
                precio = 150 * numeroEntradas;
                break;
            case "adolescente":
                precio = 180 * numeroEntradas;
                break;
            case "adulto":
                precio = 220 * numeroEntradas;
                break;
            case "adultoMayor":
                precio = 200 * numeroEntradas;
                break;
            default:
                precio = 0.0;
        }
        return precio;
    }

    public double calcularDescuento() {
        double descuento = 0.0;

        switch (perfil) {
            case "niño":
                switch (dia) {
                    case "entreSemana":
                        descuento = definirPrecios() * 0.35;
                        break;
                    case "finSemanaFeriados":
                        descuento = definirPrecios() * 0.20;
                        break;
                }
                break;

            case "adolescente":
                switch (dia) {
                    case "entreSemana":
                        descuento = definirPrecios() * 0.25;
                        break;
                    case "finSemanaFeriados":
                        descuento = definirPrecios() * 0.15;
                        break;
                }
                break;

            case "adulto":
                switch (dia) {
                    case "entreSemana":
                        descuento = definirPrecios() * 0.15;
                        break;
                    case "finSemanaFeriados":
                        descuento = definirPrecios() * 0.05;
                        break;
                }
                break;

            case "adultoMayor":
                switch (dia) {
                    case "entreSemana":
                        descuento = definirPrecios() * 0.50;
                        break;
                    case "finSemanaFeriados":
                        descuento = definirPrecios() * 0.30;
                        break;
                }
                break;

            default:
                descuento = 0.0;
        }

        return descuento;
    }

    public double calcularTotal() {
        return definirPrecios() - calcularDescuento();
    }
}
