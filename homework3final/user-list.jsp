<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Product Management Application</title>
</head>
<body>
	<center>
		<h1>Product Management</h1>
        <h2>
        	<a href="new">Add New Product</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Products</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Products</h2></caption>
            <tr>
                <th>Barcode</th>
                <th>Name</th>
                <th>Color</th>
                <th>Description</th>
            </tr>
            <c:forEach var="product" items="${listProduct}">
                <tr>
                    <td><c:out value="${product.getBarcode()}" /></td>
                    <td><c:out value="${product.getName()}" /></td>
                    <td><c:out value="${product.getColor()}" /></td>
                    <td><c:out value="${product.getDescription()}" /></td>

                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
