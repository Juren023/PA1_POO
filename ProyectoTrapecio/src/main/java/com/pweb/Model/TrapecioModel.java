package com.pweb.Model;

public class TrapecioModel {

    // Atributos
    private double area;
    private double baseMenor;
    private double baseMayor;
    private double baseDM;

    // Constructor
    public TrapecioModel(double area, double baseMenor, double baseMayor, double baseDM) {
        this.area = area;
        this.baseMenor = baseMenor;
        this.baseMayor = baseMayor;
        this.baseDM = baseDM;
    }

    // Métodos
    public double calcularAltura() {
        
        return area / ((baseMayor + baseMenor) / 2);
    }

    public double calcularAreaDAM() {
        
        double altura = calcularAltura();
        return (baseDM * altura) / 2;
    }

    public double calcularPerimetro() {
        double altura = calcularAltura();
        // Perímetro parcial (faltan lados exactos, se aproxima con altura)
        return baseMayor + baseMenor + baseDM + altura;
    }
}
