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
          <label for="cardNumber">Card Number</label>
          <div class="input-container">
            <input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label for="cardName">Cardholder Name</label>
          <input type="text" id="cardName" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="expiryDate">Expiry Date</label>
            <div class="input-container">
              <input type="text" id="expiryDate" placeholder="MM/YY" maxlength="5" required>
              <span class="icon">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label for="cvv">CVV</label>
            <div class="input-container">
              <input type="password" id="cvv" maxlength="3" placeholder="123" required>
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
    const mask = (e, p) => {
      let v = e.target.value.replace(/\D/g, ''), out = '', i = 0;
      for (const c of p) { if (i >= v.length) break; out += (c === 'X') ? v[i++] : c; }
      e.target.value = out;
    };
    document.getElementById('cardNumber').addEventListener('input', e => mask(e, 'XXXX XXXX XXXX XXXX'));
    document.getElementById('expiryDate').addEventListener('input', e => mask(e, 'XX/XX'));
    document.getElementById('payment-form').addEventListener('submit', e => {
      e.preventDefault();
      const b = document.getElementById('pay-button');
      b.disabled = true; b.textContent = 'Processing...';
      setTimeout(() => window.location.href = 'HotelBookingSuccess.jsp', 1500);
    });
  </script>
</body>
</html>
