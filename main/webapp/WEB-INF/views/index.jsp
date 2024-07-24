<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restudent</title>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
   
    <style>
        .nav-buttons {
            display: flex;
            gap: 10px; /* Adjust the gap between the buttons as needed */
        }
        .nav-buttons form {
            display: inline-block;
        }
        .submit, .cart-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .cart-button {
            display: flex;
            align-items: center;
            gap: 8px; /* Adds space between the icon and the text */
            background-color: green; /* Specific color for cart button */
        }
        .cart-button:hover, .submit:hover {
            background-color: darkgreen;
        }
        .cart-icon {
            width: 20px; /* Adjust the size as needed */
            height: 20px;
        }
    </style>
</head>

<body>
    <div class="header">
        <nav>
            <ul>
                <li><a href="index">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="contact">Contact</a></li>
            </ul>
            <div class="search">
                <input type="text" placeholder="Search here">
                <button class="btn">Search</button>
            </div>
            <div class="nav-buttons">
                <c:choose>
                    <c:when test="${not empty principal}">
                        <form action="profile" style="display: inline;">
                            <button class="submit">Profile</button>
                        </form>
                        <form action="logout" style="display: inline;">
                            <button class="submit">Logout</button>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <form action="signin" style="display: inline;">
                            <button class="submit">Sign in</button>
                        </form>
                    </c:otherwise>
                </c:choose>
                <form action="cart" style="display: inline;">
                    <button class="cart-button">
                        <img src="resources/image/cart.png" alt="Cart" class="cart-icon"> Cart
                    </button>
                </form>
            </div>
        </nav>
    </div>
    <main>
        <c:if test="${not empty message}">
            <div style="color: green;">${message}</div>
        </c:if>
        <div class="container">
            <div class="slider">
                <ul class="slider-track">
                    <li><img src="resources/image/cook2.jpg" alt="Cook 2"></li>
                    <li><img src="resources/image/cook3.jpg" alt="Cook 3"></li>
                    <li><img src="resources/image/cook4.jpg" alt="Cook 4"></li>
                    <li><img src="resources/image/cook2.jpg" alt="Cook 2"></li>
                    <li><img src="resources/image/cook3.jpg" alt="Cook 3"></li>
                    <li><img src="resources/image/cook4.jpg" alt="Cook 4"></li>
                </ul>
            </div>
            <div class="card">
                <h2 class="my-2">Taste The Dish</h2>
                <div class="cards">
                    <div class="card-item">
                        <a href="resources/image/m1.jpg"><img src="resources/image/m1.jpg" alt=""></a>
                        <p>Price: 120</p>
                        <p>Name:Roti-Chicken</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m2.jpg"><img src="resources/image/m2.jpg" alt=""></a>
                        <p>Price :130</p>
                        <p>Name:Biryani</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m3.jpg"><img src="resources/image/m3.jpg" alt=""></a>
                        <p>Price :30</p>
                        <p>Name:Parota 4pcs</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m4.jpg"><img src="resources/image/m4.jpg" alt=""></a>
                        <p>Price :40</p>
                        <p>Name:Samosa 8pcs</p>
                        <button class="cart" style="background-color:green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m5.jpg"><img src="resources/image/m5.jpg" alt=""></a>
                        <p>Price :40</p>
                        <p>Name:Veg-rice</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m6.jpg"><img src="resources/image/m6.jpg" alt=""></a>
                        <p>Price :40</p>
                        <p>Name:Luchi</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                    <div class="card-item">
                        <a href="resources/image/m7.jpg"><img src="resources/image/m7.jpg" alt=""></a>
                        <p>Price :160</p>
                        <p>Name:Special-Biryani</p>
                        <button class="cart" style="background-color: green; color: white;" onclick="location.href='/srs.res/form2'">Add to cart</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="flex-all-center">Copyright &copy; The Restudent</footer>
</body>

</html>
