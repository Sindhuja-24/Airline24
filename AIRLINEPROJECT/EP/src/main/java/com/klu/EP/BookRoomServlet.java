import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

@WebServlet("/BookRoomServlet")
public class BookRoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Assume roomCategories are stored or fetched from a database
        List<RoomCategory> roomCategories = fetchRoomCategories();

        // Set the roomCategories in request attributes
        request.setAttribute("roomCategories", roomCategories);

        // Forward the request to the JSP or HTML page
        RequestDispatcher dispatcher = request.getRequestDispatcher("HotelRoomPage.html");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkIn = request.getParameter("checkIn");
        String checkOut = request.getParameter("checkOut");
        int guests = Integer.parseInt(request.getParameter("guests"));
        String roomId = request.getParameter("roomId");

        // Handle booking logic (e.g., save to database)
        // Redirect to payment page or show booking confirmation
        response.sendRedirect("payment.jsp");
    }

    private List<RoomCategory> fetchRoomCategories() {
        // This method would fetch room categories and rooms from the database or a static list.
        return roomCategories; // Returning static data for simplicity.
    }
}
