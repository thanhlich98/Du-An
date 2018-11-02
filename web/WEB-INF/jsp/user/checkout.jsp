<%-- 
    Document   : checkout1
    Created on : Oct 29, 2018, 8:25:08 PM
    Author     : ThanhLich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
        <link rel="stylesheet" href="../fonts/icomoon/style.css">

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/magnific-popup.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">


        <link rel="stylesheet" href="../css/aos.css">

        <link rel="stylesheet" href="../css/style.css">

    </head>
    <body>
        <header class="site-navbar" role="banner">
            <div class="site-navbar-top">
                <div class="container">
                    <div class="row align-items-center">



                        <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                            <div class="site-logo">
                                <a href="index.html" class="js-logo-clone">Shoppers</a>
                            </div>
                        </div>

                        <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                            <div class="site-top-icons">
                                <ul>
                                    <li><a href="#"><span class="icon icon-person"></span></a></li>
                                    <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                                    <li>
                                        <a href="../product/cart.htm" class="site-cart">
                                            <span class="icon icon-shopping_cart"></span>
                                            <span class="count">${sessionScope.CARTSIZE}</span>
                                        </a>
                                    </li> 
                                    <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                                </ul>
                            </div> 
                        </div>

                    </div>
                </div>
            </div> 
            <nav class="site-navigation text-right text-md-center" role="navigation">
                <div class="container">
                    <ul class="site-menu js-clone-nav d-none d-md-block">
                        <li class="has-children">
                            <a href="../product/index.htm">Home</a>
                            <ul class="dropdown">
                                <li><a href="#">Linh Kiện PC</a></li>
                                <li><a href="#">Màn Hình</a></li>
                                <li><a href="#">Bàn Phím</a></li>
                                <li class="has-children">
                                    <a href="#">PC & LapTop</a>
                                    <ul class="dropdown">
                                        <li><a href="#">Dưới 10 triệu</a></li>
                                        <li><a href="#">Từ 10 đến 20 Triệu</a></li>
                                        <li><a href="#">Trên 20 triệu</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="has-children">
                            <a href="#">Accessories</a>
                            <ul class="dropdown">
                                <li><a href="#">Bàn Phím</a></li>
                                <li><a href="#">Chuột</a></li>
                                <li><a href="#">Màn Hình</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="../product/shop.htm">Shop</a></li>
                        <li><a href="#">Catagories</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="../product/contact.htm">Contact</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="bg-light py-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <a href="cart.html">Cart</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Checkout</strong></div>
                </div>
            </div>
        </div>

        <div class="site-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-12">
                        <div class="border p-4 rounded" role="alert">
                            Returning customer? <a href="#">Click here</a> to login
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-5 mb-md-0">
                        <div class="row mb-5">
                            <div class="col-md-12">
                                <h2 class="h3 mb-3 text-black">Your Order</h2>
                                <div class="p-3 p-lg-5 border">
                                    <table class="table site-block-order-table mb-5">
                                        <thead>
                                        <th>Product</th>
                                        <th>Total</th>
                                        <th>Quantity</th>
                                        </thead>
                                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                                        <c:if test="${not empty shop}">
                                            <c:set var="totalprice" value="${0}"/>
                                            <c:set var="totaldiscount" value="${0}"/>

                                            <tbody>
                                                <c:forEach var="rows" items="${shop}">
                                                    <c:set var="totalprice" value="${totalprice + rows.value.sanpham.price * rows.value.quantity}"/>
                                                    <tr>
                                                        <td><strong>${rows.value.sanpham.name} </strong></td>
                                                        <td>${rows.value.sanpham.price}</td>
                                                        <td>${rows.value.quantity}</td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </tbody>
                                    </table>

                                    <div class="border p-3 mb-3">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false" aria-controls="collapsebank">Direct Bank Transfer</a></h3>

                                        <div class="collapse" id="collapsebank">
                                            <div class="py-2">
                                                <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="border p-3 mb-3">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false" aria-controls="collapsecheque">Cheque Payment</a></h3>

                                        <div class="collapse" id="collapsecheque">
                                            <div class="py-2">
                                                <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="border p-3 mb-5">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button" aria-expanded="false" aria-controls="collapsepaypal">Paypal</a></h3>

                                        <div class="collapse" id="collapsepaypal">
                                            <div class="py-2">
                                                <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                            </div>
                                        </div>
                                    </div>




                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <h2 class="h3 mb-3 text-black">Billing Details</h2>
                        <div class="p-3 p-lg-5 border">
                            <form id="form" action="../checkout/add_orders.htm" method="get">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_fname" class="text-black">Customer Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_fname" name="txtName">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_address" name="txtAddress" placeholder="Street address">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_address" class="text-black">Phone No <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_address" name="txtPhone" placeholder="Street address">
                                    </div>
                                </div>
                                <div class="form-group row mb-5">
                                    <div class="col-md-12">
                                        <label for="c_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_email_address" name="txtEmail">
                                    </div>                                
                                </div>
                                <input hidden="true" type="text" value="${totalprice}" name="txtTotalPrice"/>


                                <div class="form-group">
                                    <button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location = 'thankyou.html'">Place Order</button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
                <!-- </form> -->
            </div>
        </div>

        <footer class="site-footer border-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="footer-heading mb-4">Navigations</h3>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <ul class="list-unstyled">
                                    <li><a href="#">Sell online</a></li>
                                    <li><a href="#">Features</a></li>
                                    <li><a href="#">Shopping cart</a></li>
                                    <li><a href="#">Store builder</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <ul class="list-unstyled">
                                    <li><a href="#">Mobile commerce</a></li>
                                    <li><a href="#">Dropshipping</a></li>
                                    <li><a href="#">Website development</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <ul class="list-unstyled">
                                    <li><a href="#">Point of sale</a></li>
                                    <li><a href="#">Hardware</a></li>
                                    <li><a href="#">Software</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
                        <h3 class="footer-heading mb-4">Promo</h3>
                        <a href="#" class="block-6">
                            <img src="../images/hero_1.jpg" alt="Image placeholder" class="img-fluid rounded mb-4">
                            <h3 class="font-weight-light  mb-0">Finding Your Perfect Shoes</h3>
                            <p>Promo from  nuary 15 &mdash; 25, 2019</p>
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="block-5 mb-5">
                            <h3 class="footer-heading mb-4">Contact Info</h3>
                            <ul class="list-unstyled">
                                <li class="address">203 Fake St. Mountain View, San Francisco, California, USA</li>
                                <li class="phone"><a href="tel://23923929210">+2 392 3929 210</a></li>
                                <li class="email">emailaddress@domain.com</li>
                            </ul>
                        </div>

                        <div class="block-7">
                            <form action="#" method="post">
                                <label for="email_subscribe" class="footer-heading">Subscribe</label>
                                <div class="form-group">
                                    <input type="text" class="form-control py-4" id="email_subscribe" placeholder="Email">
                                    <input type="submit" class="btn btn-sm btn-primary" value="Send">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row pt-5 mt-5 text-center">
                    <div class="col-md-12">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>

                </div>
            </div>
        </footer>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/jquery.magnific-popup.min.js"></script>
        <script src="../js/aos.js"></script>

        <script src="../js/main.js"></script>

    </body>
</html>
