package com.klu.EP;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SupplierLoginServlet")
public class SupplierLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "admin", "Sindhuja#2004");

            // Validate supplier
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE username = ? AND password = ?");
            ps.setString(1, username);
            ps.setString(2, password); // Note: Password should be hashed
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                // Redirect to supplier-dashboard.jsp
                response.sendRedirect("homePage.jsp");
            } else {
                response.sendRedirect("Login.jsp?error=Invalid username or password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("homePage.jsp"); // Redirect to an error page in case of exceptions
        }
    }
}