/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDetailDAO;
import DAO.ProductsDAO;
import cart.CartBean;
import cart.ProductDTO;
import com.sun.net.httpserver.HttpServer;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Products;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author tanks
 */
@Controller
@RequestMapping(value = "/cartbean/")
public class CartBeanController {

    @RequestMapping(value = "{products_id}")
    public String viewcart(HttpServletRequest request, ModelMap model, @PathVariable int products_id) {
        HttpSession session = request.getSession(true);
        CartBean a = (CartBean) session.getAttribute("SHOP");
        if (a == null) {
            a = new CartBean();
        }
        ProductDetailDAO productsDetail = new ProductDetailDAO();// thực ra viết cái này findOne_Id_of_Product(products_id) trong ProductsDAO cũng được đỡ phải tạo 2 cái DAO mà kết quả lại chả khác gì nhau
        List<Products> ds = new ArrayList<Products>();
        ds = productsDetail.findOne_Id_of_Product(products_id);
        String name = ds.get(0).getName();
        int id = ds.get(0).getId();
        int price = ds.get(0).getPrice();
        String image = ds.get(0).getImage();
        boolean status = ds.get(0).isStatus();
        int quantity = ds.get(0).getQuantity();
        Products s = new Products(id, name, image, status, price, quantity);

        ProductDTO sanpham = new ProductDTO(s);

        a.addSanPham(sanpham);

        session.setAttribute("SHOP", a);
        session.setAttribute("CARTSIZE", a.size());
        

        return "redirect:" + session.getAttribute("uri").toString();//return ve ProductController nơi mà được set uri
    }

    @RequestMapping(value = "remove/{products_id}", method = RequestMethod.GET)
    public String remove(HttpServletRequest request, ModelMap model, @PathVariable int products_id) {
        HttpSession session = request.getSession(true);
        if (session != null) {
            CartBean a = (CartBean) session.getAttribute("SHOP");
            if (a != null) {
                a.removeSanpham(products_id);
                session.setAttribute("SHOP", a);
                session.setAttribute("CARTSIZE", a.size());
                if (a.size() == 0) {
                    session.removeAttribute("SHOP");
                    session.removeAttribute("CARTSIZE");
                }
            }
        }
        return "redirect:" + session.getAttribute("uri").toString();//return ve ProductController nơi mà được set uri
    }

}
