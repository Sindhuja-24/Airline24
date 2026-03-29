<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel Payment Page</title>
  <link rel="stylesheet" href="HotelPaymentPage.css">
  <link rel="stylesheet" href="Navbar.css">
</head>
<body>
  <div class="payment-container">
    <div class="payment-details">
      <h2>Payment Details</h2>

      <div class="room-summary">
        <div>
          <p class="room-name">Room Name</p>
          <p class="booking-dates">Check-in - Check-out</p>
          <p class="guests">Guests: 2</p>
        </div>
        <p class="room-price">$200</p>
      </div>

      <form id="payment-form">
        <div class="form-group">
          <label>Card Number</label>
          <div class="input-container">
            <input type="text" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label>Cardholder Name</label>
          <input type="text" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label>Expiry Date</label>
            <div class="input-container">
              <input type="text" placeholder="MM/YY" maxlength="5" required>
              <span class="icon">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label>CVV</label>
            <div class="input-container">
              <input type="password" maxlength="3" placeholder="123" required>
              <span class="icon">&#128274;</span>
            </div>
          </div>
        </div>

        <button type="submit" id="pay-button">Pay $200</button>
      </form>

      <div class="secure-info">
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    document.getElementById("payment-form").addEventListener("submit", function (e) {
      e.preventDefault();
      const submitBtn = document.getElementById("pay-button");
      submitBtn.innerHTML = "Processing Payment...";
      submitBtn.disabled = true;
      submitBtn.style.opacity = "0.6";
      submitBtn.style.cursor = "not-allowed";

      setTimeout(() => {
        // Simulate successful payment and redirect to the Hotel Booking Success page
        window.location.href = "HotelBookingSuccess.jsp";
      }, 2000);
    });
  </script>
</body>
</html>
