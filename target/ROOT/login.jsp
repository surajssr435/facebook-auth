<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Facebook - Log In or Sign Up</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <div class="left-section">
            <h1>facebook</h1>
            <p>Connect with friends and the world around you on Facebook.</p>
        </div>
        
        <div class="right-section">
            <div class="login-box">
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <input type="text" name="email" placeholder="Email address" required>
                    <input type="password" name="password" placeholder="Password" required>
                    <button type="submit" class="login-btn">Log In</button>
                    <a href="#">Forgot password?</a>
                    <hr>
                    <a href="${pageContext.request.contextPath}/register" class="create-btn">Create New Account</a>
                </form>
                
                <c:if test="${not empty error}">
                    <div class="error-message">${error}</div>
                </c:if>
                
                <c:if test="${not empty success}">
                    <div class="success-message">${success}</div>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>
