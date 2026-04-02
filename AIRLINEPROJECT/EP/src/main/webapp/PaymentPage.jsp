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
          <i data-lucide="shield-check" class="inline-block h-4 w-4 mr-1" aria-hidden="true"></i>
          Your payment information is secure and encrypted
        </p>
      </div>
    </div>
  </div>

  <script>
  // Input formatting
  const cardNumberInput = document.getElementById('card-number');
  const expiryDateInput = document.getElementById('expiry-date');

  cardNumberInput.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    value = value.match(/.{1,4}/g)?.join(' ') || '';
    e.target.value = value;
  });

  expiryDateInput.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    if (value.length > 2) {
      value = value.substring(0, 2) + '/' + value.substring(2, 4);
    }
    e.target.value = value;
  });

  document.getElementById("payment-form").addEventListener("submit", function (e) {
    e.preventDefault();
    const submitBtn = document.getElementById("submit-btn");
    submitBtn.innerHTML = "Processing Payment...";
    submitBtn.disabled = true;
    submitBtn.classList.add('opacity-75', 'cursor-not-allowed');

    setTimeout(() => {
      // Simulate successful payment and redirect to the Payment Success page
      window.location.href = "PaymentSuccessPage.jsp"; // Update this URL to the actual location of your Payment Success page
    }, 2000);
  });

  // Initialize Lucide icons
  lucide.createIcons();
</script>

</body>
</html>
