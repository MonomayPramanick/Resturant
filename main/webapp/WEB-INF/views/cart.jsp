<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
</head>
<body>
    <h1>User Details</h1>
    <p>${user }</p>
    <p><strong>UserName:</strong> ${user.username}</p>
    <p><strong>Email:</strong> ${user.email}</p>
    <p><strong>Phone:</strong> ${user.phoneNumber}</p>

    <h2>Carts</h2>
    <c:forEach var="cart" items="${user.cart}">
        <p>${cart.mealName} - ${cart.areaName}</p>
    </c:forEach>
</body>
</html>
