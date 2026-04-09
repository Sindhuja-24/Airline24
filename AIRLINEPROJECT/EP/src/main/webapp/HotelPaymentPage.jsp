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

      <form id="payment-form" action="HotelBookingSuccess.jsp" method="POST">
        <div class="form-group">
          <label for="hotel-card-number">Card Number</label>
          <div class="input-container">
            <input type="text" id="hotel-card-number" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label for="hotel-card-name">Cardholder Name</label>
          <input type="text" id="hotel-card-name" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="hotel-expiry-date">Expiry Date</label>
            <div class="input-container">
              <input type="text" id="hotel-expiry-date" placeholder="MM/YY" maxlength="5" required>
              <span class="icon">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label for="hotel-cvv">CVV</label>
            <div class="input-container">
              <input type="password" id="hotel-cvv" maxlength="3" placeholder="123" required>
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
    const cardNumber = document.getElementById('hotel-card-number');
    cardNumber.addEventListener('input', (e) => {
      const target = e.target;
      const position = target.selectionStart;
      const length = target.value.length;

      target.value = target.value.replace(/\D/g, '').replace(/(.{4})/g, '$1 ').trim().substring(0, 19);

      const newLength = target.value.length;
      const nextPosition = position + (newLength - length);
      target.setSelectionRange(nextPosition, nextPosition);
    });

    const expiryDate = document.getElementById('hotel-expiry-date');
    expiryDate.addEventListener('input', (e) => {
      const target = e.target;
      const position = target.selectionStart;
      const length = target.value.length;

      let value = target.value.replace(/\D/g, '');
      if (value.length > 2) {
        target.value = value.substring(0, 2) + '/' + value.substring(2, 4);
      } else {
        target.value = value;
      }

      const newLength = target.value.length;
      const nextPosition = position + (newLength - length);
      target.setSelectionRange(nextPosition, nextPosition);
    });

    document.getElementById("payment-form").addEventListener("submit", function (e) {
      document.getElementById("pay-button").innerHTML = "Processing Payment...";
    });
  </script>
</body>
</html>
