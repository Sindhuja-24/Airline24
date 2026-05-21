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
          <label for="card-number">Card Number</label>
          <div class="input-container">
            <input type="text" id="card-number" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon" aria-hidden="true">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label for="card-name">Cardholder Name</label>
          <input type="text" id="card-name" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="expiry-date">Expiry Date</label>
            <div class="input-container">
              <input type="text" id="expiry-date" placeholder="MM/YY" maxlength="5" required>
              <span class="icon" aria-hidden="true">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label for="cvv">CVV</label>
            <div class="input-container">
              <input type="password" id="cvv" maxlength="3" placeholder="123" required>
              <span class="icon" aria-hidden="true">&#128274;</span>
            </div>
          </div>
        </div>

        <button type="submit" id="pay-button">Pay $200</button>
      </form>

      <script>
        const mask = (e, m) => {
          let v = e.target.value.replace(/\D/g, ''), out = '', i = 0, j = 0;
          while (i < m.length && j < v.length) out += m[i++] === '#' ? v[j++] : m[i-1];
          const c = e.target.selectionStart + (out.length - e.target.value.length);
          e.target.value = out; e.target.setSelectionRange(c, c);
        };
        document.getElementById('card-number').oninput = e => mask(e, '#### #### #### ####');
        document.getElementById('expiry-date').oninput = e => mask(e, '##/##');
        document.getElementById('payment-form').onsubmit = (e) => {
          e.preventDefault(); const btn = document.getElementById('pay-button');
          btn.disabled = true; btn.textContent = 'Processing...';
          setTimeout(() => window.location.href = 'HotelBookingSuccess.jsp', 1500);
        };
      </script>

      <div class="secure-info">
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>
</body>
</html>
