package com.example.auth;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class AuthenticationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        String path = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());
        
        // Allow access to login, register, and static resources
        if (path.startsWith("/login") || path.startsWith("/register") 
                || path.startsWith("/css/") || path.equals("/")) {
            chain.doFilter(request, response);
            return;
        }
        
        HttpSession session = httpRequest.getSession(false);
        UserService userService = new UserService();
        
        if (session != null && session.getAttribute("sessionId") != null) {
            String sessionId = (String) session.getAttribute("sessionId");
            if (userService.isValidSession(sessionId)) {
                chain.doFilter(request, response);
                return;
            }
        }
        
        // Redirect to login if not authenticated
        httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
    }
}
