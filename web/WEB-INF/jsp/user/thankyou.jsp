<%-- 
    Document   : thankyou
    Created on : Nov 2, 2018, 6:43:30 PM
    Author     : ThanhLich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="site-wrap">
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
                                            <a href="cart.html" class="site-cart">
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
                            <li><a href="../product/shop.htm">Shop</a></li>
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
                        <div class="col-md-12 mb-0"><a href="../product/index.htm">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Cart</strong></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <span class="icon-check_circle display-3 text-success"></span>
                        <h2 class="display-3 text-black">Thank you!</h2>
                        <p class="lead mb-5">You order was successfuly completed.</p>
                        <p><a href="../product/index.htm" class="btn btn-sm btn-primary">Back to shop</a></p>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
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
