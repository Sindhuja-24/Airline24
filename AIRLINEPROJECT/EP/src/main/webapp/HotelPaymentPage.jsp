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
            <input id="card-number" type="text" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon" aria-hidden="true">&#128179;</span>
          </div>
        </div>
        <div class="form-group">
          <label for="card-name">Cardholder Name</label>
          <input id="card-name" type="text" placeholder="JOHN DOE" required>
        </div>
        <div class="form-row">
          <div class="form-group">
            <label for="expiry-date">Expiry Date</label>
            <div class="input-container">
              <input id="expiry-date" type="text" placeholder="MM/YY" maxlength="5" required>
              <span class="icon" aria-hidden="true">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label for="cvv">CVV</label>
            <div class="input-container">
              <input id="cvv" type="password" maxlength="3" placeholder="123" required>
              <span class="icon" aria-hidden="true">&#128274;</span>
            </div>
          </div>
        </div>
        <button type="submit" id="pay-button">Pay $200</button>
      </form>
      <div class="secure-info"><p>&#128274; Your payment information is secure and encrypted.</p></div>
    </div>
  </div>
  <script>
    const fmt = (el, m, s) => {
      el.oninput = (e) => {
        let v = e.target.value.replace(/\D/g, ''), r = '';
        for (let i = 0; i < v.length && i < m; i++) {
          if (i > 0 && i % s === 0) r += (s === 4 ? ' ' : '/');
          r += v[i];
        }
        const cur = e.target.selectionStart + (r.length - e.target.value.length);
        e.target.value = r; e.target.setSelectionRange(cur, cur);
      };
    };
    fmt(document.getElementById('card-number'), 16, 4);
    fmt(document.getElementById('expiry-date'), 4, 2);
    document.getElementById('payment-form').onsubmit = (e) => {
      e.preventDefault();
      const b = document.getElementById('pay-button');
      b.disabled = true; b.textContent = 'Processing Payment...';
      setTimeout(() => location.href = 'HotelBookingSuccess.jsp', 1500);
    };
  </script>
</body>
</html>
