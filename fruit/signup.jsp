<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fruits Basket</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
        <!-- Header -->
        <header>
            <a href="index.html" style="text-decoration: none; color: white;">Fruits Basket</a>
        </header>
        <!-- Navigation -->
        <nav>
            <a href="index.html">Home</a>
            <a href="products.html">Products</a>
            <a href="about.html">About</a>
            <a href="board.html">Board</a>
            <div class = "topnav-right">
                <a href="signup.jsp">Sign Up</a>
                <a href="login.jsp">Login</a>
        </nav>
    <h1>Sign Up</h1>
    <form method="post" action="signupaction.jsp">
        <label for="username">ID:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="fullname">Name:</label>
        <input type="text" id="fullname" name="fullname" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <select name="phone">
	      <option>010</option>
                  <option>011</option>
                  <option>012</option>
        </select>
        - <input type="text" name="phone2" size="5">
        - <input type="text" name="phone3" size="5">
        <br/>
        <input type="radio" name="gender" value="m" checked>Male
        <input type="radio" name="gender" value="f">Female
        <br>
        <input type="submit" value="Join">
    </form>
</body>
</html>