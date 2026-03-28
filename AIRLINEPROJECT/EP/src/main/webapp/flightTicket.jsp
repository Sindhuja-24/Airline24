<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.klu.EP, com.klu.Passenger" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boarding Pass</title>
    <link rel="stylesheet" href="flightTicket.css">
</head>
<body>
    <div class="ticket-container">
        <div class="ticket-header">
            <h1>SkyWings Airlines</h1>
            <h2>Boarding Pass</h2>
        </div>

        <div class="section">
            <h3>Flight Details</h3>
            <p><strong>Flight Number:</strong> ${flight.flightNumber}</p>
            <p><strong>Date:</strong> ${flight.date}</p>
            <p><strong>From:</strong> ${flight.from} (Terminal ${flight.terminal})</p>
            <p><strong>To:</strong> ${flight.to}</p>
            <p><strong>Departure:</strong> ${flight.departure}</p>
            <p><strong>Arrival:</strong> ${flight.arrival}</p>
            <p><strong>Gate:</strong> ${flight.gate}</p>
            <p><strong>Class:</strong> ${flight.flightClass}</p>
        </div>

        <div class="section">
            <h3>Passenger Information</h3>
            <p><strong>Name:</strong> ${passenger.firstName} ${passenger.lastName}</p>
            <p><strong>Passport:</strong> ${passenger.passport}</p>
        </div>

        <div class="section">
            <p class="warning">Important: Arrive at least 3 hours before international flights and 2 hours before domestic flights.</p>
        </div>

        <a href="DownloadTicketServlet?flightNumber=${flight.flightNumber}" class="download-button">Download Boarding Pass</a>
    </div>
</body>
</html>
