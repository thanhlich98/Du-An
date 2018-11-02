/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Delivery;

/**
 *
 * @author ThanhLich
 */
public class DeliveryDAO {

    public boolean Insert(Delivery d) {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "insert into Delivery values(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, d.getNameDelivery());
            ps.setString(2,d.getAddressDelivery());
            ps.setString(3, d.getStartDateDelivery());
            ps.setString(4, d.getEndDateDelivery());
            ps.setString(5, d.getPhoneDelivery());
            ps.setBoolean(6, true);
            int rs = ps.executeUpdate();
            if (rs > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("InsertDelivery(DAO)");
            e.printStackTrace();
        }
        return false;
    }
}
