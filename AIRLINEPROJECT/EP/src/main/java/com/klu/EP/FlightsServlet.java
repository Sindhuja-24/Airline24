package com.klu.EP;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/FlightsServlet")
public class FlightsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fromCity = request.getParameter("fromCity");
        String toCity = request.getParameter("toCity");
        String selectedDate = request.getParameter("selectedDate");
        String selectedClass = request.getParameter("selectedClass");
        int passengers = Integer.parseInt(request.getParameter("passengers"));

        // Assuming a FlightService class to handle business logic
        FlightService flightService = new FlightService();
        List<Flight> flights = flightService.getFilteredFlights(fromCity, toCity, selectedDate, selectedClass, passengers);

        request.setAttribute("flights", flights);
        request.getRequestDispatcher("/flights.jsp").forward(request, response);
    }
}
