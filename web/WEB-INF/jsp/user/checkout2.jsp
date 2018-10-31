<%-- 
    Document   : checkout2
    Created on : Oct 29, 2018, 8:56:34 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${sessionScope.CARTSIZE > 0}">
                <b>Giỏ hàng : </b><h2>${sessionScope.CARTSIZE}  sản phẩm </h2><!-- đếm được quantity thì bày t với :V -->
                <table border="1">
                    <tr>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td></td>
                    </tr>
                    <c:set var="shop" value="${sessionScope.SHOP}"/>
                    <c:if test="${not empty shop}">
                        <c:set var="totalprice" value="${0}"/>
                        <c:set var="totaldiscount" value="${0}"/>
                        <c:forEach var="rows" items="${shop}">
                            <c:set var="totalprice" value="${totalprice + rows.value.sanpham.price * rows.value.quantity}"/>
                            <tr>
                                <td>${rows.value.sanpham.name}</td>
                                <td>${rows.value.sanpham.price}</td>
                                <td>${rows.value.quantity}</td>
                                <td><a href="<s:url value="/cartbean/remove/${rows.value.sanpham.id}.htm"/>">Remove</a></td>
                            </tr>
                        </c:forEach>
                    </c:if>

                </table>
            </c:when>
            <c:otherwise>
                cart is empty, please add to cart to show cart list !
            </c:otherwise>
        </c:choose>
        <form id="form" action="../checkout/add_orders.htm" method="get">
            <div class="row">
                <div class="col-12 mb-3">
                    <label >Full Name <span>*</span></label>
                    <input name="txtName" type="text" >
                </div>
                <div class="col-12 mb-3">
                    <label >Address <span>*</span></label>
                    <input name="txtAddress" type="text" >
                </div>
                <div class="col-12 mb-3">
                    <label >Phone No <span>*</span></label>
                    <input name="txtPhone" type="text" >
                </div>
                <div class="col-12 mb-4">
                    <label >Email Address <span>*</span></label>
                    <input name="txtEmail" type="email" >
                </div>
                <input hidden="true" type="text" value="${totalprice}" name="txtTotalPrice"/>
                <div class="col-12 mb-4">
                    <label >Notes </label>
                    <textarea style="height: 5vh;" rows="10" cols="10" class="form-control" id="note" name="note" ></textarea>
                </div>
                <button type="submit"  class="btn essence-btn">ADD</button>



            </div>

        </form>
        <div style="width: 100%; text-align: center;">
            <div> 
                <button onclick="resetFunction();" class="btn essence-btn">Reset</button>
            </div>
        </div>

    </body>
</html>
