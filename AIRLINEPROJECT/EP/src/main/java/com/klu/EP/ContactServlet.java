import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Here you can add functionality to send an email or save the message in a database.

        // For demonstration purposes, let's forward to a success page or reload.
        request.setAttribute("confirmationMessage", "Thank you for your message, " + fullName + "!");
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }
}
