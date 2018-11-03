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
import java.util.ArrayList;
import java.util.List;
import model.Users;

/**
 *
 * @author ThanhLich
 */
public class UsersDAO {

    public boolean Login(String username, String password) {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "Select * from Customers where usernameCustomer like ? and passwordCustomer like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return  true;
                // vì nếu nó có dữ liệu mới true chứ.. không có k đc true ok
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    public List<Users> showUsers(String usernamee) {
        try {
            Connection conn = DBConnection.getConn();
            String sql = "select * from Customers where usernameCustomer like '" + usernamee + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Users> list = new ArrayList<Users>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String username = rs.getString(2);
                String pass = rs.getString(3);
                String name = rs.getString(4);
                String email = rs.getString(5);

                String imageuser = rs.getString(9);
                String phone = rs.getString(6);
                String address = rs.getString(7);
                Users a = new Users(id, username, pass, name, email, phone, address, true, imageuser);
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            System.out.println("showUsers(DAO)");
            e.printStackTrace();
        }
        return null;
    }
}
