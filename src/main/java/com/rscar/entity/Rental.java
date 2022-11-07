package com.rscar.entity;

import java.util.Date;

public class Rental extends Entity {
    private Date issueDate;
    private Date returnDate;
    private int customerId;
    private Customer customer;
    private int regCarId;
    private RegCar regCar;

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
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

    public int getRegCarId() {
        return regCarId;
    }

    public void setRegCarId(int regCarId) {
        this.regCarId = regCarId;
    }

    public RegCar getRegCar() {
        return regCar;
    }

    public void setRegCar(RegCar regCar) {
        this.regCar = regCar;
    }

    @Override
    public String toString() {
        return "Rental{" +
                "issueDate=" + issueDate +
                ", returnDate=" + returnDate +
                ", customerId=" + customerId +
                ", customer=" + customer +
                ", regCarId=" + regCarId +
                ", regCar=" + regCar +
                '}';
    }
}
