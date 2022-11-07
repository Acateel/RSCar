package com.rscar.entity;

import java.util.Date;

public class Sales extends Entity{
    private double price;
    private Date executionDate;
    private int carId;
    private Car car;
    private int customerId;
    private Customer customer;

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getExecutionDate() {
        return executionDate;
    }

    public void setExecutionDate(Date executionDate) {
        this.executionDate = executionDate;
    }

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

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "Sales{" +
                "price=" + price +
                ", executionDate=" + executionDate +
                ", carId=" + carId +
                ", car=" + car +
                ", customerId=" + customerId +
                ", customer=" + customer +
                '}';
    }
}
