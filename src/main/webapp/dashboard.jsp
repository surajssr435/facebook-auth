<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Facebook</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="header">
        <div class="logo">facebook</div>
        <div class="search-box">
            <input type="text" placeholder="Search Facebook">
        </div>
        <div class="user-menu">
            <span>Welcome, ${user.firstName} ${user.lastName}</span>
            <a href="${pageContext.request.contextPath}/logout">Logout</a>
        </div>
    </div>
    
    <div class="main-content">
        <div class="left-sidebar">
            <!-- Navigation menu -->
        </div>
        
        <div class="center-content">
            <!-- News feed -->
            <h2>Welcome to Facebook</h2>
        </div>
        
        <div class="right-sidebar">
            <!-- Contacts and sponsored content -->
        </div>
    </div>
</body>
</html>
