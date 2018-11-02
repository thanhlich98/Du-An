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
public class Wishlist {

    private int Id;
    private int userId;
    private int productId;
    private String productName;
    private int productPrice;
    
    
    public Wishlist() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

   

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public Wishlist(int Id, int userId, int productId, String productName,  int productPrice) {
        this.Id = Id;
        this.userId = userId;
        this.productId = productId;
        this.productName = productName; 
        this.productPrice = productPrice;
    }

   
}
