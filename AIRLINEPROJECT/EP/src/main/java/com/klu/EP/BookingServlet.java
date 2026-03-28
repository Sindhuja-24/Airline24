package com.klu.EP;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String flight = request.getParameter("flight");
        String date = request.getParameter("date");
        int passengers = Integer.parseInt(request.getParameter("passengers"));

        List<PassengerInfo> passengerInfoList = new ArrayList<>();

        for (int i = 0; i < passengers; i++) {
            PassengerInfo passenger = new PassengerInfo();
            passenger.setFirstName(request.getParameter("firstName_" + i));
            passenger.setLastName(request.getParameter("lastName_" + i));
            passenger.setEmail(request.getParameter("email_" + i));
            passenger.setPhone(request.getParameter("phone_" + i));
            passenger.setPassport(request.getParameter("passport_" + i));
            passengerInfoList.add(passenger);
        }

        request.setAttribute("flight", flight);
        request.setAttribute("date", date);
        request.setAttribute("passengers", passengers);
        request.setAttribute("passengerInfo", passengerInfoList);

        request.getRequestDispatcher("PaymentPage.jsp").forward(request, response);
    }

    private class PassengerInfo {
        private String firstName;
        private String lastName;
        private String email;
        private String phone;
        private String passport;
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getPassport() {
			return passport;
		}
		public void setPassport(String passport) {
			this.passport = passport;
		}

        // Getters and setters...
    }
}
