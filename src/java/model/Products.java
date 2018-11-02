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
public class Products {

    private int id;
    private String name;
    private String image;
    private String  status;     
    private int quantity;
    private int price;
    private String tag;
    private String des;
    private int guarantee;
    private int idCatagories;
    private int idAdmin;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

   

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(int guarantee) {
        this.guarantee = guarantee;
    }

    public int getIdCatagories() {
        return idCatagories;
    }

    public void setIdCatagories(int idCatagories) {
        this.idCatagories = idCatagories;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public Products() {
    }

    public Products(int id, String name, String image, String status, int quantity, int price, String tag, String des, int guarantee, int idCatagories, int idAdmin) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.status = status;
        this.quantity = quantity;
        this.price = price;
        this.tag = tag;
        this.des = des;
        this.guarantee = guarantee;
        this.idCatagories = idCatagories;
        this.idAdmin = idAdmin;
    }

   
   
}
