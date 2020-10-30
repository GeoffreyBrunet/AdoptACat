package com.beans;

public class Cat {
    private int idCat;
    private String nom, age;

    public Cat(String nom, String age) {
        this.nom = nom;
        this.age = age;
    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
}
