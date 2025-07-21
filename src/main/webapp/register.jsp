<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Facebook - Sign Up</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <div class="left-section">
            <h1>facebook</h1>
            <p>Connect with friends and the world around you on Facebook.</p>
        </div>
        
        <div class="right-section">
            <div class="register-box">
                <h2>Create a new account</h2>
                <p>It's quick and easy.</p>
                
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="name-fields">
                        <input type="text" name="firstName" placeholder="First name" required>
                        <input type="text" name="lastName" placeholder="Last name" required>
                    </div>
                    
                    <input type="email" name="email" placeholder="Email" required>
                    <input type="password" name="password" placeholder="New password" required>
                    
                    <label>Birthday</label>
                    <input type="date" name="dob" required>
                    
                    <label>Gender</label>
                    <div class="gender-options">
                        <label><input type="radio" name="gender" value="male" required> Male</label>
                        <label><input type="radio" name="gender" value="female"> Female</label>
                        <label><input type="radio" name="gender" value="other"> Other</label>
                    </div>
                    
                    <button type="submit" class="signup-btn">Sign Up</button>
                </form>
                
                <c:if test="${not empty error}">
                    <div class="error-message">${error}</div>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>
