
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Booking Page</title>
  <link rel="stylesheet" href="booking.css">
  <link rel="stylesheet" href="nav.css">
  <link rel="stylesheet" href="Navbar.css">
</head>
<body>
<nav class="main-menu top-menu">
                <ul>
                    <li class="active"><a href="homePage.jsp">Home</a></li>                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="flights.jsp">Flights</a></li>
                    <li><a href="HotelsPage.jsp">Hotels</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
  <div class="booking-page pt-16 min-h-screen bg-gray-50">
    <div class="max-w-4xl mx-auto px-4 py-8">
      <div class="flight-details bg-white rounded-lg shadow-md p-6 mb-6">
        <h2 class="text-2xl font-bold mb-4">Flight Details</h2>
        <div class="grid grid-cols-2 gap-4">
          <div>
            <p class="text-gray-600">From</p>
            <p class="font-semibold">${flight.from}</p>
          </div>
          <div>
            <p class="text-gray-600">To</p>
            <p class="font-semibold">${flight.to}</p>
          </div>
          <div>
            <p class="text-gray-600">Date</p>
            <p class="font-semibold">${date}</p>
          </div>
          <div>
            <p class="text-gray-600">Passengers</p>
            <p class="font-semibold">${passengers}</p>
          </div>
          <div>
            <p class="text-gray-600">Flight</p>
            <p class="font-semibold">${flight.airline}</p>
          </div>
          <div>
            <p class="text-gray-600">Class</p>
            <p class="font-semibold">${flight.class}</p>
          </div>
        </div>
      </div>

      <form id="booking-form" action="PaymentPage.jsp" method="POST">
        <!-- Passenger Information Fields -->
        <c:forEach var="i" begin="0" end="${passengers - 1}">
          <div class="passenger-info bg-white rounded-lg shadow-md p-6 mb-6">
            <h3 class="text-xl font-semibold mb-4">Passenger ${i + 1}</h3>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label for="firstName_${i}" class="block text-sm font-medium text-gray-700 mb-1">First Name</label>
                <input type="text" id="firstName_${i}" name="firstName_${i}" required class="input-field" />
              </div>
              <div>
                <label for="lastName_${i}" class="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
                <input type="text" id="lastName_${i}" name="lastName_${i}" required class="input-field" />
              </div>
              <div>
                <label for="email_${i}" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                <input type="email" id="email_${i}" name="email_${i}" required class="input-field" />
              </div>
              <div>
                <label for="phone_${i}" class="block text-sm font-medium text-gray-700 mb-1">Phone</label>
                <input type="tel" id="phone_${i}" name="phone_${i}" required class="input-field" />
              </div>
              <div class="md:col-span-2">
                <label for="passport_${i}" class="block text-sm font-medium text-gray-700 mb-1">Passport Number</label>
                <input type="text" id="passport_${i}" name="passport_${i}" required class="input-field" />
              </div>
            </div>
          </div>
        </c:forEach>

        <!-- Total Amount Section -->
        <div class="total-amount bg-white rounded-lg shadow-md p-6 mb-6">
          <div class="flex justify-between items-center">
            <div>
              <p class="text-lg font-semibold">Total Amount</p>
              <p class="text-gray-600">for ${passengers} passenger(s)</p>
            </div>
            <p class="text-2xl font-bold text-blue-600">${flight.price * passengers}</p>
          </div>
        </div>

        <button type="submit" id="submit-btn" class="btn-submit">Proceed to Payment</button>
      </form>
    </div>
  </div>
  <script>
    document.getElementById("booking-form").addEventListener("submit", function (e) {
      const btn = document.getElementById("submit-btn");
      btn.disabled = true;
      btn.innerHTML = "Proceeding...";
    });
  </script>
</body>
</html>
