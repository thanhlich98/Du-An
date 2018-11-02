/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDetailDAO;
import model.Products;

import java.util.ArrayList;
import java.util.List;
import DAO.ProductsDAO;
import cart.CartBean;
import cart.ProductDTO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ThanhLich
 */
@Controller
@RequestMapping(value = "/product/")
public class ProductController {

    @RequestMapping("contact")
    public String contact() {
        return "user/contact";
    }

    @RequestMapping("index")
    public String index() {
        return "user/index";
    }   
    @RequestMapping("shop")
    public String showpd(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        ProductsDAO products = new ProductsDAO();
        List<Products> ds = new ArrayList<>();
        ds = products.showproducts();

        session.setAttribute("list_product", ds);
        session.setAttribute("uri", request.getRequestURI().substring(request.getContextPath().length()));// session uri được tạo ra khi chạy đúng trang /product/showproduct.htm, mặc định trang chủ được set ở redirect.jsp

        return "user/shop";
    }

    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String search(ModelMap model, HttpServletRequest request) {
        String txtSearch = request.getParameter("txtSearch");
        HttpSession session = request.getSession(false);
        ProductsDAO products = new ProductsDAO();
        List<Products> ds = new ArrayList<Products>();
        ds = products.Search(txtSearch);
        model.addAttribute("search_size", ds.size());
        model.addAttribute("listProducts", ds);
        model.addAttribute("shop_title_search_result", "search result");
        session.setAttribute("uri", request.getRequestURI().substring(request.getContextPath().length()));
        return "user/searchProduct";
    }

}
