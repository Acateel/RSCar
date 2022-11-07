package com.rscar.entity;

public class RegCar extends Entity {
    private int carId;
    private Car car;
    private String licensePlate;
    private double rentalPrice;

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public double getRentalPrice() {
        return rentalPrice;
    }

    public void setRentalPrice(double rentalPrice) {
        this.rentalPrice = rentalPrice;
    }

    @Override
    public String toString() {
        return "RegCar{" +
                "carId=" + carId +
                ", car=" + car +
                ", licensePlate='" + licensePlate + '\'' +
                ", rentalPrice=" + rentalPrice +
                '}';
    }
}
