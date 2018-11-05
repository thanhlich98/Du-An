<%-- 
    Document   : detail
    Created on : Nov 5, 2018, 12:59:01 PM
    Author     : ThanhLich
--%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
        <jsp:include page="header.jsp"/>
        <div class="bg-light py-3">
            <div class="container">
                <c:forEach var="item" items="${listProducts}">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="../product/index.htm">Home</a> <span class="mx-2 mb-0">/</span><a href="../product/shop.htm">Shop</a> <span class="mx-2 mb-0">/</span><strong class="text-black">${item.name}</strong></div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="site-section">
            <div class="container">
                <div class="row">
                    <c:forEach var="item" items="${listProducts}">
                        <div class="col-md-6">
                            <img src="../images/${item.image}" alt="Image" class="img-fluid">
                        </div>
                        <div class="col-md-6">
                            <h2 class="text-black">${items.name}</h2>
                            <p>${item.tag}.</p>
                            <p><strong class="text-primary h4">$${item.price}</strong></p>

                            <div class="mb-5">
                                <div class="input-group mb-3" style="max-width: 120px;">
                                    <div class="input-group-prepend">
                                        <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                                    </div>
                                    <input type="text" class="form-control text-center" value="${item.quantity}" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                                    </div>
                                </div>

                            </div>
                            <p><a href="<s:url value="/cartbean/${item.id}.htm"/>" class="buy-now btn btn-sm btn-primary">Add To Cart</a></p>

                        </div>
                    </c:forEach>
                </div>
                <div class="site-section block-3 site-blocks-2 bg-light">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-md-7 site-section-heading text-center pt-4">
                                <h2>Featured Products</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">

                                <div class="nonloop-block-3 owl-carousel">
                                    <c:forEach var="items" items="${sessionScope.listProducts}">
                                        <div class="item">
                                            <div class="block-4 text-center">
                                                <figure class="block-4-image">
                                                    <a href="<s:url value="../product_detail/${items.id}.htm"/>"><img src="../images/${items.image}" alt="Image placeholder" class="img-fluid"></a>
                                                </figure>
                                                <div class="block-4-text p-4">
                                                    <h3><a href="#">${items.name}</a></h3>
                                                    <p class="mb-0">${items.tag}</p>
                                                    <p class="text-primary font-weight-bold">${items.price}&#8363</p>
                                                    <a href="<s:url value="/cartbean/${items.id}.htm"/>">Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
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
