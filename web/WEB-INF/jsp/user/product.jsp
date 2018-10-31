<%-- 
    Document   : product1
    Created on : Oct 28, 2018, 8:53:56 AM
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

        <div class="search-area">
            <form action="../product/search.htm" method="get">
                <input type="search" name="txtSearch"  placeholder="Type for search">
<!--                <button type="submit">Search</button>-->
            </form>
        </div>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Image</td>
                <td>Status</td>
                <td>Price</td>
                <td>Quantity</td>
            </tr>
            <c:forEach var="items" items="${sessionScope.list_product}">
                <tr>
                    <td>${items.id}</td>
                    <td>${items.name}</td>
                    <td><img  src="../images/${items.image}" style="width:50px;height:50px"/></td>
                    <td>${items.status}</td>
                    <td>${items.price}</td>
                    <td>${items.quantity}</td>
                <input type="hidden" name="id" value="${items.id}" />
                <td><a href="<s:url value="../product/${items.id}"/>"> Delete</a>  </td><!-- Tại sao button không xử lý trong form thì research @PathVariable -> nó truyền item.id -> controller -> từ controller xử lý cái id đó và select từ sql ra -> không cần phải xài form nhiều chỗ-->
                <td><a href="<s:url value="/cartbean/${items.id}.htm"/>">Add to cart</a></td>
            </tr>
        </c:forEach>
    </table>

    <hr>
    <c:choose>
        <c:when test="${sessionScope.CARTSIZE > 0}">
            <b>Giỏ hàng : </b><h2>${sessionScope.CARTSIZE}  sản phẩm </h2>
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Image</td>
                    <td>Status</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td></td>
                </tr>
                <c:set var="shop" value="${sessionScope.SHOP}"/>
                <c:if test="${not empty shop}">
                    <c:set var="totalprice" value="${0}"/>
                    <c:set var="totaldiscount" value="${0}"/>
                    <!--lúc đầu giá trị sẽ là 0 sau đó sẽ được tăng lên sau, hiểu k, tang trong for a ừ,ok, gio ghi de` no len-->
                    <c:forEach var="rows" items="${shop}">
                        <c:set var="totalprice" value="${totalprice + rows.value.sanpham.price * rows.value.quantity}"/>
                        <tr>
                            <td>${rows.value.sanpham.id}</td>
                            <td>${rows.value.sanpham.name}</td>
                            <td><img  src="../images/${rows.value.sanpham.image}" style="width:50px;height:50px"/></td>
                            <td>${rows.value.sanpham.status}</td>

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
    <div class="checkout-btn mt-100">
        <a href="../checkout/checkout.htm" class="btn essence-btn">check out</a>



    </div>

</body>
</html>
