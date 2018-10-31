/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;
import model.Products;

/**
 *
 * @author ThanhLich
 */
public class ProductsDAO {

    public List<Products> showproducts() {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "Select * from Product Where ProductStatus = 1";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Products> list = new ArrayList<Products>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String image = rs.getString(3);
                boolean status = rs.getBoolean(4);
                int price = rs.getInt(5);
                int quantity = rs.getInt(6);
                Products a = new Products(id, name, image, status, price, quantity);
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

    public List<Products> Search(String txtName) {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "Select * from Product where ProductName like '%" + txtName + "%'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Products> list = new ArrayList<Products>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String image = rs.getString(3);
                boolean status = rs.getBoolean(4);
                int price = rs.getInt(5);
                int quantity = rs.getInt(6);
                Products a = new Products(id, name, image, status, price, quantity);
                list.add(a);
            }
            return list;
        } catch (Exception e) {
          
            e.printStackTrace();
        }
        return null;
    }
}
