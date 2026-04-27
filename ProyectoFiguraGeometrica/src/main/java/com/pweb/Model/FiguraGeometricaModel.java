package com.pweb.Model;

public class FiguraGeometricaModel {

    // atributos 
    private String figura;
    private double base;
    private double altura;

    // Constructor
    public FiguraGeometricaModel(String figura, double base, double altura) {
        this.figura = figura;
        this.base = base;
        this.altura = altura;
    }

    // Metodos
    public double calcularArea() {
        double area = 0;
        switch (figura) {
            case "cuadrado":
                area = base * base;
                break;
            case "rectangulo":
                area = base * altura;
                break;
            case "triangulo":
                area = (base * altura) / 2;
                break;
            case "trapecio":
                // simplificado: base = base mayor, altura = base menor
                area = ((base + altura) / 2) * altura;
                break;
            case "paralelogramo":
                area = base * altura;
                break;
        }
        return area;
    }

    public double calcularPerimetro() {
        double perimetro = 0;
        switch (figura) {
            case "cuadrado":
                perimetro = 4 * base;
                break;
            case "rectangulo":
                perimetro = 2 * (base + altura);
                break;
            case "triangulo":
                // ejemplo: triángulo equilátero
                perimetro = 3 * base;
                break;
            case "trapecio":
                // asumimos trapecio isósceles con lados iguales a altura
                perimetro = base + altura + 2 * this.altura;
                break;
            case "paralelogramo":
                perimetro = 2 * (base + altura);
                break;
        }
        return perimetro;
    }
}
