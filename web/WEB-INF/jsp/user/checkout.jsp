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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
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
        </div>
        <div>

        </div>
    </body>
</html>
