/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ThanhLich
 */
public class Delivery {

    private int id;
    private String nameDelivery;
    private String addressDelivery;
    private String startDateDelivery;
    private String endDateDelivery;
    private String phoneDelivery;
    private boolean statusDelivery;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameDelivery() {
        return nameDelivery;
    }

    public void setNameDelivery(String nameDelivery) {
        this.nameDelivery = nameDelivery;
    }

    public String getAddressDelivery() {
        return addressDelivery;
    }

    public void setAddressDelivery(String addressDelivery) {
        this.addressDelivery = addressDelivery;
    }

    public String getStartDateDelivery() {
        return startDateDelivery;
    }

    public void setStartDateDelivery(String startDateDelivery) {
        this.startDateDelivery = startDateDelivery;
    }

    public String getEndDateDelivery() {
        return endDateDelivery;
    }

    public void setEndDateDelivery(String endDateDelivery) {
        this.endDateDelivery = endDateDelivery;
    }

    public String getPhoneDelivery() {
        return phoneDelivery;
    }

    public void setPhoneDelivery(String phoneDelivery) {
        this.phoneDelivery = phoneDelivery;
    }

    public boolean isStatusDelivery() {
        return statusDelivery;
    }

    public void setStatusDelivery(boolean statusDelivery) {
        this.statusDelivery = statusDelivery;
    }

    public Delivery() {
    }

    public Delivery(int id, String nameDelivery, String addressDelivery, String startDateDelivery, String endDateDelivery, String phoneDelivery, boolean statusDelivery) {
        this.id = id;
        this.nameDelivery = nameDelivery;
        this.addressDelivery = addressDelivery;
        this.startDateDelivery = startDateDelivery;
        this.endDateDelivery = endDateDelivery;
        this.phoneDelivery = phoneDelivery;
        this.statusDelivery = statusDelivery;
    }
    public Delivery( String nameDelivery, String addressDelivery, String startDateDelivery, String endDateDelivery, String phoneDelivery, boolean statusDelivery) {
        
        this.nameDelivery = nameDelivery;
        this.addressDelivery = addressDelivery;
        this.startDateDelivery = startDateDelivery;
        this.endDateDelivery = endDateDelivery;
        this.phoneDelivery = phoneDelivery;
        this.statusDelivery = statusDelivery;
    }
    
}
