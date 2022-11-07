package com.rscar.entity;

import java.util.Date;

public class Car extends Entity {
    private String name;
    private String make;
    private String type;
    private Date graduationYear;
    private String vinCode;
    private int technacalCondidtion;
    private double price;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Date graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getVinCode() {
        return vinCode;
    }

    public void setVinCode(String vinCode) {
        this.vinCode = vinCode;
    }

    public int getTechnacalCondidtion() {
        return technacalCondidtion;
    }

    public void setTechnacalCondidtion(int technacalCondidtion) {
        this.technacalCondidtion = technacalCondidtion;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + getId() + '\'' +
                "name='" + name + '\'' +
                ", make='" + make + '\'' +
                ", type='" + type + '\'' +
                ", graduationYear=" + graduationYear +
                ", vinCode='" + vinCode + '\'' +
                ", technacalCondidtion=" + technacalCondidtion +
                ", price=" + price +
                '}';
    }
}
