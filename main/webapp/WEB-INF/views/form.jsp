<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }
        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
            margin-bottom: 10px;
            font-size: 20px;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 14px;
        }
        input, select {
            width: calc(100% - 24px); /* Adjusted width */
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input:focus, select:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        button {
            width: 100%;
            padding: 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 12px;
            transition: background-color 0.3s;
            margin-top: 7px; /* Adjusted margin */
        }
        button:hover {
            background-color: #0056b3;
        }
        .toggle-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .toggle-buttons button {
            width: 100px;
            margin: 0 10px;
        }
        .hidden {
            display: none;
        }
        .back-button {
            background-color: #333;
            color: white;
            margin-top: 10px;
        }
        .back-button:hover {
            background-color: #555;
        }
    </style>
    <script>
        function showForm(formType) {
            var loginForm = document.getElementById('loginForm');
            var signInForm = document.getElementById('signInForm');
            if (formType === 'login') {
                loginForm.classList.remove('hidden');
                signInForm.classList.add('hidden');
            } else {
                signInForm.classList.remove('hidden');
                loginForm.classList.add('hidden');
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>SRS Restudent</h1>
        <div class="toggle-buttons">
            <button type="button" onclick="showForm('login')">Login</button>
            <button type="button" onclick="showForm('signIn')">Sign In</button>
        </div>

        <form id="loginForm" action="users/login" method="post">
            <label for="loginUsername">Username:</label>
            <input type="text" id="loginUsername" name="username" required>

            <label for="loginPassword">Password:</label>
            <input type="password" id="loginPassword" name="password" required>

            <button type="submit">Login</button>
            <button type="button" class="back-button" onclick="location.href='/srs.res/index'">Back</button>
        </form>

        <form id="signInForm" class="hidden" action="users/submitForm" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="mealType">Meal Type:</label>
            <select id="mealType" name="mealType" required>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Non-Vegetarian">Non-Vegetarian</option>
                <option value="Vegan">Vegan</option>
            </select>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required>

            <button type="submit">Sign In</button>
            <button type="button" class="back-button" onclick="location.href='/srs.res/index'">Back</button>
        </form>
    </div>
</body>
</html>
