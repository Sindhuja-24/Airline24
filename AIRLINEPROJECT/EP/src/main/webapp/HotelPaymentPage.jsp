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
      <form id="payment-form" action="HotelBookingSuccess.jsp" method="GET">
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
        <p><span aria-hidden="true">&#128274;</span> Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>
  <script>
    const format = (el, fn) => {
      el.addEventListener('input', (e) => {
        const start = el.selectionStart, val = el.value;
        const formatted = fn(val.replace(/\D/g, ''));
        if (val !== formatted) {
          el.value = formatted;
          const delta = formatted.length - val.length;
          el.setSelectionRange(start + delta, start + delta);
        }
      });
    };
    const card = document.getElementById('card-number'), exp = document.getElementById('expiry-date');
    if (card) format(card, v => v.match(/.{1,4}/g)?.join(' ').substring(0, 19) || '');
    if (exp) format(exp, v => v.length > 2 ? v.substring(0, 2) + '/' + v.substring(2, 4) : v);
    document.getElementById('payment-form').addEventListener('submit', e => {
      const btn = document.getElementById('pay-button');
      btn.disabled = true; btn.textContent = 'Processing...';
      e.preventDefault(); setTimeout(() => e.target.submit(), 1500);
    });
  </script>
</body>
</html>
