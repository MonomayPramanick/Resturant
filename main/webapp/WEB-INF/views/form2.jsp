<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meal Information Form</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 500px;
        margin: 20px;
    }
    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        margin-bottom: 8px;
        color: #333;
    }
    .form-group input, .form-group select {
        width: 100%;
        padding: 12px;
        border-radius: 4px;
        border: 1px solid #ccc;
        font-size: 16px;
    }
    .form-group input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s;
    }
    .form-group input[type="submit"]:hover {
        background-color: #45a049;
    }
    .form-icon {
        margin-right: 10px;
        color: #4CAF50;
    }
    @media (max-width: 768px) {
        .form-container {
            padding: 20px;
            margin: 10px;
        }
    }
</style>
<script>
    window.onload = function() {
        const urlParams = new URLSearchParams(window.location.search);
        const name = urlParams.get('name');
        const price = urlParams.get('price');
        if (name) document.getElementById('mealName').value = name;
        if (price) document.getElementById('price').value = price;
    }
</script>
</head>
<body>
<div class="form-container">
    <h2>Meal Information</h2>
    <form action="submitMeal" method="post">
        <div class="form-group">
            <label for="userName"><i class="fas fa-user form-icon"></i>Username:</label>
            <input type="text" id="userName" name="userName" required>
        </div>
        <div class="form-group">
            <label for="mealName"><i class="fas fa-utensils form-icon"></i>Meal Name:</label>
            <input type="text" id="mealName" name="mealName" required>
        </div>
        <div class="form-group">
            <label for="village"><i class="fas fa-home form-icon"></i>Village:</label>
            <input type="text" id="village" name="village" required>
        </div>
        <div class="form-group">
            <label for="areaName"><i class="fas fa-map-marker-alt form-icon"></i>Area Name:</label>
            <input type="text" id="areaName" name="areaName" required>
        </div>
        <div class="form-group">
            <label for="payType"><i class="fas fa-credit-card form-icon"></i>Payment Type:</label>
            <select id="payType" name="payType" required>
                <option value="cash">Cash</option>
                <option value="online">Online</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" value="Submit">
        </div>
    </form>
</div>
</body>
</html>
