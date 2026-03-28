package com.klu.EP;

package com.klu.EP;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SupplierRegisterServlet")
public class SupplierRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Database connection constants
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/airline";
	private static final String JDBC_USER = "admin";
	private static final String JDBC_PASSWORD = "Sindhuja#2004";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Supplier register servlet initiated");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");

		// Basic validation
		if (username == null || password == null || email == null || phoneNumber == null || address == null) {
			System.out.println("Missing required fields");
			response.sendRedirect("homePage.jsp?message=Missing+required+fields");
			return;
		}

		try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				PreparedStatement ps = conn.prepareStatement(
					"INSERT INTO register (username, password, email, phoneNumber, address) VALUES (?, ?, ?, ?, ?)")) {

			// Set parameters in the PreparedStatement
			ps.setString(1, username);
			ps.setString(2, password);  // Hash the password in production
			ps.setString(3, email);
			ps.setString(4, phoneNumber);
			ps.setString(5, address);

			int rowsAffected = ps.executeUpdate();
			System.out.println("Rows affected: " + rowsAffected);

			if (rowsAffected > 0) {
				System.out.println("Supplier registered successfully");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			} else {
				System.out.println("Supplier registration failed");
				response.sendRedirect("homePage.jsp?message=Registration+Failed");
			}

		} catch (Exception e) {
			System.err.println("Error occurred during supplier registration: " + e.getMessage());
			e.printStackTrace();
			response.sendRedirect("homePage.jsp?message=Database+Error");
		}
	}
}
