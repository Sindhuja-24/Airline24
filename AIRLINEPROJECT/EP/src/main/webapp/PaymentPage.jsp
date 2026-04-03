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
              <label for="card-number" class="block text-sm font-medium text-gray-700 mb-1">Card Number</label>
              <div class="relative">
                <input required type="text" maxLength="19" placeholder="1234 5678 9012 3456" id="card-number" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                <i data-lucide="credit-card" class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" aria-hidden="true"></i>
              </div>
            </div>

            <!-- Cardholder Name -->
            <div>
              <label for="card-name" class="block text-sm font-medium text-gray-700 mb-1">Cardholder Name</label>
              <input required type="text" placeholder="JOHN DOE" id="card-name" class="w-full p-2 border rounded-md" />
            </div>

            <!-- Expiry and CVV -->
            <div class="grid grid-cols-2 gap-4">
              <!-- Expiry Date -->
              <div>
                <label for="expiry-date" class="block text-sm font-medium text-gray-700 mb-1">Expiry Date</label>
                <div class="relative">
                  <input required type="text" placeholder="MM/YY" maxLength="5" id="expiry-date" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                  <i data-lucide="calendar" class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" aria-hidden="true"></i>
                </div>
              </div>

              <!-- CVV -->
              <div>
                <label for="cvv" class="block text-sm font-medium text-gray-700 mb-1">CVV</label>
                <div class="relative">
                  <input required type="password" maxLength="3" placeholder="123" id="cvv" class="w-full pl-10 pr-3 py-2 border rounded-md" />
                  <i data-lucide="lock" class="absolute left-3 top-2.5 h-5 w-5 text-gray-400" aria-hidden="true"></i>
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
          <i data-lucide="lock" class="inline-block h-4 w-4 mr-1" aria-hidden="true"></i>
          Your payment information is secure and encrypted
        </p>
      </div>
    </div>
  </div>

  <script>
    // Initialize Lucide icons
    lucide.createIcons();

    // Card number masking (4-4-4-4)
    document.getElementById('card-number').addEventListener('input', function (e) {
      let cursor = e.target.selectionStart;
      let value = e.target.value.replace(/\D/g, '');
      let formattedValue = '';
      for (let i = 0; i < value.length; i++) {
        if (i > 0 && i % 4 === 0) formattedValue += ' ';
        formattedValue += value[i];
      }

      let oldLength = e.target.value.length;
      e.target.value = formattedValue;
      let newLength = formattedValue.length;

      // Adjust cursor position
      if (cursor < oldLength) {
        e.target.setSelectionRange(cursor, cursor);
      }
    });

    // Expiry date masking (MM/YY)
    document.getElementById('expiry-date').addEventListener('input', function (e) {
      let cursor = e.target.selectionStart;
      let value = e.target.value.replace(/\D/g, '');
      let formattedValue = value;

      if (value.length > 2) {
        formattedValue = value.slice(0, 2) + '/' + value.slice(2, 4);
      } else if (value.length === 2 && e.inputType !== 'deleteContentBackward') {
        formattedValue = value + '/';
      }

      let oldLength = e.target.value.length;
      e.target.value = formattedValue;

      // Adjust cursor position if not at the end
      if (cursor < oldLength) {
        e.target.setSelectionRange(cursor, cursor);
      }
    });

    document.getElementById("payment-form").addEventListener("submit", function (e) {
      e.preventDefault();
      const submitBtn = document.getElementById("submit-btn");
      submitBtn.innerHTML = "Processing Payment...";
      submitBtn.disabled = true;
      submitBtn.classList.add('opacity-75', 'cursor-not-allowed');

      setTimeout(() => {
        // Simulate successful payment and redirect to the Payment Success page
        window.location.href = "PaymentSuccessPage.jsp";
      }, 2000);
    });
  </script>

</body>
</html>
