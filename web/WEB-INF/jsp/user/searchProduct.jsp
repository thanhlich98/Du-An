<%-- 
    Document   : searchProduct
    Created on : Oct 31, 2018, 8:45:28 AM
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
        <h2>${shop_title_search_result}${ao_search_result}${quan_search_result}${phukien_search_result}</h2>

        <table border="1">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Image</td>
                <td>Status</td>
                <td>Price</td>
                <td>Quantity</td>
            </tr>
            <tr>
                <c:forEach var="items" items="${listProducts}">
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
            <a href="../product/showproduct.htm" >Back to Shop</a>
    </tr>
</table>


</body>
</html>
