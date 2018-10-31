/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.Orders;
import model.OrderDetail;

/**
 *
 * @author tanks
 */
public class CheckoutDAO {

    public CheckoutDAO() {
    }

    public boolean add_order(Orders orders) {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "insert into Orders values (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, orders.getCustomersname());
            ps.setString(2, orders.getOrderstatus());
            ps.setInt(3, orders.getTotal());   
            ps.setString(4, orders.getDate());
            ps.setString(5, orders.getAddress());
            ps.setString(6, orders.getPhone());

            int rs = ps.executeUpdate();
            if (rs > 0) {
                return true;
            }//insert thi excutequry luon dc  k
            // catch = sai
        } catch (Exception e) {
            System.out.println("add_order(DAO)");
            e.printStackTrace();
        }
        return false;
    }
//ok ok con gi nua k, chua tao dc ben trang jsp , back end chua xong chua lam dc cai do a.. ok vay co gi thac mac ib t :V
    public int select_id_just_added_to_order() {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "SELECT MAX(OrderId) FROM Orders";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                return id;
            }
        } catch (Exception e) {
            System.out.println("select_id_just_added_to_order(DAO)");
            e.printStackTrace();
        }
        return 0;
    }
    // fix sao , thay cau lenh a
    // 1 order - n orderdetail
    // ok r dung k chưa
    public boolean add_orderdetail(OrderDetail orderDetail) {
        // đúng hết rồi nhưng cái này bị lỗi bên SQL theo kiểu khóa chính khóa ngoại
        try {
            Connection conn = DBConnection.getConn();
            String sql = "insert into OrderDetails values (?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderDetail.getQuantity());
            ps.setInt(2, orderDetail.getOrderid());
            ps.setInt(3, orderDetail.getProductid());
            int rs = ps.executeUpdate();
            if (rs > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("add_orderdetail(DAO)");
            e.printStackTrace();
        }
        return false;
    }
}
