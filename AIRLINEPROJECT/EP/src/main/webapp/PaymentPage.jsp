<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Page</title>
  <link rel="stylesheet" href="PaymentPage.css">
  <link rel="stylesheet" href="Navbar.css">
  <link rel="stylesheet" href="nav.css">

  <script src="https://cdn.jsdelivr.net/npm/lucide-icons@0.226.0/dist/lucide.min.js"></script>
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

  <div class="pt-16 min-h-screen bg-gray-50">
    <div class="max-w-2xl mx-auto px-4 py-8">
      <div class="bg-white rounded-lg shadow-md p-6 mb-6">
        <h2 class="text-2xl font-bold mb-4">Payment Details</h2>

        <!-- Flight Details -->
        <div class="mb-6">
          <div class="flex justify-between items-center py-4 border-b">
            <div>
              <p class="font-semibold" id="airline">Airline</p>
              <p class="text-gray-600" id="flight-details">From - To</p>
              <p class="text-gray-600" id="passengers">1 passenger</p>
            </div>
            <p class="text-2xl font-bold text-blue-600" id="total-amount">$100</p>
          </div>
        </div>

        <!-- Payment Form -->
        <form id="payment-form">
          <div class="space-y-4">
            <!-- Card Number -->
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-1">Card Number</label>
              <div class="relative">
                <input required type="text" maxLength="19" placeholder="1234 5678 9012 3456" id="card-number" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                <svg class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                  <path d="M12 5c4.418 0 8 3.582 8 8s-3.582 8-8 8S4 13.418 4 9s3.582-8 8-8zM12 7v6h6M12 7l-6 6"></path>
                </svg>
              </div>
            </div>

            <!-- Cardholder Name -->
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-1">Cardholder Name</label>
              <input required type="text" placeholder="JOHN DOE" id="card-name" class="w-full p-2 border rounded-md" />
            </div>

            <!-- Expiry and CVV -->
            <div class="grid grid-cols-2 gap-4">
              <!-- Expiry Date -->
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Expiry Date</label>
                <div class="relative">
                  <input required type="text" placeholder="MM/YY" maxLength="5" id="expiry-date" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                  <svg class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <path d="M12 5c4.418 0 8 3.582 8 8s-3.582 8-8 8S4 13.418 4 9s3.582-8 8-8zM12 7v6h6M12 7l-6 6"></path>
                  </svg>
                </div>
              </div>

              <!-- CVV -->
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">CVV</label>
                <div class="relative">
                  <input required type="password" maxLength="3" placeholder="123" id="cvv" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                  <svg class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <path d="M12 5c4.418 0 8 3.582 8 8s-3.582 8-8 8S4 13.418 4 9s3.582-8 8-8zM12 7v6h6M12 7l-6 6"></path>
                  </svg>
                </div>
              </div>
            </div>
          </div>

          <!-- Submit Button -->
          <button type="submit" id="submit-btn" class="w-full mt-6 bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 flex items-center justify-center">
            Pay $100
          </button>
        </form>
      </div>

      <!-- Security Message -->
      <div class="bg-blue-50 rounded-lg p-4">
        <p class="text-sm text-blue-800">
          <svg class="inline-block h-4 w-4 mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
            <path d="M12 5c4.418 0 8 3.582 8 8s-3.582 8-8 8S4 13.418 4 9s3.582-8 8-8zM12 7v6h6M12 7l-6 6"></path>
          </svg>
          Your payment information is secure and encrypted
        </p>
      </div>
    </div>
  </div>

  <script>
  document.getElementById("payment-form").addEventListener("submit", function (e) {
    e.preventDefault();
    const submitBtn = document.getElementById("submit-btn");
    submitBtn.innerHTML = "Processing Payment...";
    submitBtn.disabled = true;
    submitBtn.classList.add("opacity-75", "cursor-not-allowed");

    setTimeout(() => {
      // Simulate successful payment and redirect to the Payment Success page
      window.location.href = "PaymentSuccessPage.jsp"; // Update this URL to the actual location of your Payment Success page
    }, 2000);
  });
</script>

</body>
</html>
