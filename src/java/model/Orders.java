/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tanks
 */
public class Orders {

    private int id;
    private String customersname;
    private String orderstatus;
    private int total;
    private String date;
    private String address;
    private String phone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomersname() {
        return customersname;
    }

    public void setCustomersname(String customersname) {
        this.customersname = customersname;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Orders() {
    }

    public String getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(String orderstatus) {
        this.orderstatus = orderstatus;
    }

    public Orders(int id, String customersname, String orderstatus, int total, String date, String address, String phone) {
        this.id = id;
        this.customersname = customersname;
        this.orderstatus = orderstatus;
        this.total = total;
        this.date = date;
        this.address = address;
        this.phone = phone;
    }

    public Orders(String customersname, String orderstatus, int total, String date, String address, String phone) {

        this.customersname = customersname;
        this.orderstatus = orderstatus;
        this.total = total;
        this.date = date;
        this.address = address;
        this.phone = phone;
    }

}
