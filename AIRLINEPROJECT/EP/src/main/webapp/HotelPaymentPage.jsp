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

      <div class="secure-info">
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    const $ = id => document.getElementById(id);
    const format = (el, fn) => {
      const start = el.selectionStart, oldLen = el.value.length;
      el.value = fn(el.value);
      el.selectionStart = el.selectionEnd = start + (el.value.length - oldLen);
    };
    $('card-number').oninput = e => format(e.target, v => {
      let d = v.replace(/\D/g, ''), f = '';
      for (let i = 0; i < d.length && i < 16; i++) f += (i > 0 && i % 4 === 0 ? ' ' : '') + d[i];
      return f;
    });
    $('expiry-date').oninput = e => format(e.target, v => {
      let d = v.replace(/\D/g, '');
      return d.length > 2 ? d.slice(0, 2) + '/' + d.slice(2, 4) : d;
    });
    $('payment-form').onsubmit = e => {
      e.preventDefault();
      $('pay-button').disabled = true;
      $('pay-button').textContent = 'Processing...';
      setTimeout(() => window.location.href = "HotelBookingSuccess.jsp", 1500);
    };
  </script>
</body>
</html>
