/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.CheckoutDAO;
import DAO.DeliveryDAO;
import cart.CartBean;
import cart.ProductDTO;
import java.time.LocalDate;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Delivery;
import model.OrderDetail;
import model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ThanhLich
 */
@Controller
@RequestMapping(value = "/checkout/")
public class CheckoutController {

    @RequestMapping("checkout")
    public String view(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        session.getAttribute("listUser");
        return "user/checkout2";
    }

    @RequestMapping(value = "add_orders", method = RequestMethod.GET) // post hay get
    public String add_orders(ModelMap model, HttpServletRequest request, HttpSession session) {
        LocalDate now = LocalDate.now();
        String name = request.getParameter("txtName");
        String phone = request.getParameter("txtPhone");
        String address = request.getParameter("txtAddress");
        String email = request.getParameter("txtEmail");
        String note = request.getParameter("note");
        String total = request.getParameter("txtTotalPrice");
        Orders order = new Orders(name, true, Integer.parseInt(total), true, now.toString());
        CheckoutDAO list = new CheckoutDAO();
        list.add_order(order);
        LocalDate endday = now.plusDays(10);
        Delivery delivery = new Delivery(name, address, now.toString(), endday.toString(), phone, true);
        DeliveryDAO d = new DeliveryDAO();
        d.Insert(delivery);
//không có lỗi những không vào db à ?,um
        // bang orderdeatil á
        CartBean cartBean = (CartBean) session.getAttribute("SHOP");
        for (ProductDTO productDTO : cartBean.values()) {
            OrderDetail orderdetail = new OrderDetail(list.select_id_just_added_to_order(), productDTO.getQuantity(), productDTO.getSanpham().getId());
            list.add_orderdetail(orderdetail);
        }

        return "user/checkout2";
    }

}
