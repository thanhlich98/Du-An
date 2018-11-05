/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDetailDAO;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Products;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ThanhLich
 */
@Controller
@RequestMapping(value = "/product_detail/")
public class ProductDetailController {
    @RequestMapping("{products_id}")
    public String products_id(ModelMap model, HttpServletRequest request, @PathVariable int products_id) {
        HttpSession session = request.getSession(false);
        ProductDetailDAO productsDetail = new ProductDetailDAO();
        List<Products> ds = new ArrayList<Products>();
        ds = productsDetail.findOne_Id_of_Product(products_id);
        model.addAttribute("listProducts", ds);

        session.getAttribute("listProducts");
        session.getAttribute("CARTSIZE");
        session.getAttribute("IMGUSER");
        session.getAttribute("listUser");
        session.getAttribute("WISHLIST_SIZE");
        session.getAttribute("WISHLIST_LIST");
        
        session.setAttribute("uri", request.getRequestURI().substring(request.getContextPath().length()));
        return "user/detail";
    }
}
