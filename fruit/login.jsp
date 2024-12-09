<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
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
    <h1>Login</h1>
    <form method="post" action="loginaction.jsp">
        <label for="userID">Username:</label>
        <input type="text" id="userID" name="userID" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <input type="submit" value="Login">
    </form>

    <button onclick="window.location.href='join.jsp'">Join</button>
</body>
</html>