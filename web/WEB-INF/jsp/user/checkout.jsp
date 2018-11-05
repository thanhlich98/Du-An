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
        <jsp:include page="header.jsp"/>
        <div class="bg-light py-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-0"><a href="../product/index.htm">Home</a> <span class="mx-2 mb-0">/</span> <a href="cart.html">Cart</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Checkout</strong></div>
                </div>
            </div>
        </div>

        <div class="site-section">

            <div class="container">

                <div class="row mb-5">
                    <div class="col-md-12">
                        <div class="border p-4 rounded" role="alert">
                            Returning customer? <a href="">Click here</a> to login
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

                                            </tbody>
                                        </c:if>
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
                                        <input type="text" class="form-control" id="c_fname" name="txtName" placeholder="Custommer Name">
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
                                        <input type="text" class="form-control" id="c_address" name="txtPhone" placeholder="Phone No">
                                    </div>
                                </div>
                                <div class="form-group row mb-5">
                                    <div class="col-md-12">
                                        <label for="c_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" id="c_email_address" name="txtEmail" placeholder="Email">
                                    </div>                                
                                </div>
                                <input hidden="true" type="text" value="${totalprice}" name="txtTotalPrice"/>


                                <div class="form-group">
                                    <button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location = 'thankyou.html'">Place Order</button>
                                </div>
                            </form>
                        </div>
                        <!-- </form> -->
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp"/>
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
