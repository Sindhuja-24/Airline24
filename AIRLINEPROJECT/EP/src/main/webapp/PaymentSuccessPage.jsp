<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Success</title>
  <link rel="stylesheet" href="PaymentSuccessPage.css">
  <script src="https://cdn.jsdelivr.net/npm/lucide-icons@0.226.0/dist/lucide.min.js"></script>
  <!-- Include jsPDF library -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
</head>
<body>

  <div class="relative min-h-screen">
    <!-- Background Image -->
    <div class="fixed inset-0 bg-cover bg-center bg-fixed z-0" style="background-image: url('https://images.unsplash.com/photo-1436491865332-7a61a109cc05?auto=format&fit=crop&q=80');">
      <div class="absolute inset-0 bg-black/50 backdrop-blur-[2px]"></div>
    </div>

    <div class="relative z-10 pt-16">
      <div class="max-w-2xl mx-auto px-4 py-8">
        <div class="bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-8 text-center">
          <svg class="h-16 w-16 text-green-500 mx-auto mb-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
            <path d="M12 5c4.418 0 8 3.582 8 8s-3.582 8-8 8S4 13.418 4 9s3.582-8 8-8zM12 7v6h6M12 7l-6 6"></path>
          </svg>
          <h1 class="text-2xl font-bold text-gray-900 mb-2">Payment Successful!</h1>
          <p class="text-gray-600 mb-8">
            Your flight has been booked successfully. Thank you for choosing SkyWings!
          </p>

          <!-- Booking Details -->
          <div class="bg-gray-50 rounded-lg p-6 mb-8">
            <h2 class="text-lg font-semibold mb-4">Booking Details</h2>
            <div class="grid grid-cols-2 gap-4 text-left">
              <div>
                <p class="text-gray-600">Flight</p>
                <p class="font-semibold" id="airline">Airline</p>
              </div>
              <div>
                <p class="text-gray-600">Date</p>
                <p class="font-semibold" id="date">Date</p>
              </div>
              <div>
                <p class="text-gray-600">From</p>
                <p class="font-semibold" id="from">From Location</p>
              </div>
              <div>
                <p class="text-gray-600">To</p>
                <p class="font-semibold" id="to">To Location</p>
              </div>
              <div>
                <p class="text-gray-600">Passengers</p>
                <p class="font-semibold" id="passengers">1 Passenger</p>
              </div>
              <div>
                <p class="text-gray-600">Total Amount</p>
                <p class="font-semibold" id="total-amount">$100</p>
              </div>
            </div>
          </div>

          <!-- Flight Ticket and Home Link -->
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <!-- Flight Ticket Button -->
            <a href="Flight_Ticket.pdf" id="download-ticket" class="flex items-center justify-center px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
              View Flight Ticket
            </a>
            <!-- Return Home Button -->
            <a href="homePage.jsp" class="flex items-center justify-center px-6 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200">
              Return Home
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // Set booking details dynamically
    document.getElementById("airline").innerText = "SkyWings";
    document.getElementById("date").innerText = "2024-12-15";
    document.getElementById("from").innerText = "New York";
    document.getElementById("to").innerText = "Los Angeles";
    document.getElementById("passengers").innerText = "1";
    document.getElementById("total-amount").innerText = "$200";

    // Generate PDF with jsPDF
    document.getElementById('download-ticket').addEventListener('click', function () {
      const { jsPDF } = window.jspdf;
      const doc = new jsPDF();

      // Add content to PDF
      doc.setFontSize(16);
      doc.text("SkyWings Flight Ticket", 10, 20);
      doc.setFontSize(12);
      doc.text("Flight: " + document.getElementById("airline").innerText, 10, 40);
      doc.text("Date: " + document.getElementById("date").innerText, 10, 50);
      doc.text("From: " + document.getElementById("from").innerText, 10, 60);
      doc.text("To: " + document.getElementById("to").innerText, 10, 70);
      doc.text("Passengers: " + document.getElementById("passengers").innerText, 10, 80);
      doc.text("Total Amount: " + document.getElementById("total-amount").innerText, 10, 90);

      // Download the PDF
      doc.save("Flight_Ticket.pdf");
    });
  </script>

</body>
</html>
