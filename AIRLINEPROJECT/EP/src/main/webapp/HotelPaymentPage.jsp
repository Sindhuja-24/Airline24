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
          <label for="cardholder-name">Cardholder Name</label>
          <input type="text" id="cardholder-name" placeholder="JOHN DOE" required>
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
    const h = (id, ev, fn) => document.getElementById(id).addEventListener(ev, fn);
    const k = (e, p) => {
      let v = e.target.value.replace(/\D/g, ''), t = '', l = e.target.value.length, c = e.target.selectionStart;
      if (p === 4) for (let i = 0; i < v.length && i < 16; i++) t += (i > 0 && i % 4 === 0 ? ' ' : '') + v[i];
      else t = v.substring(0, 2) + (v.length > 2 ? '/' + v.substring(2, 4) : '');
      e.target.value = t;
      e.target.setSelectionRange(c + (t.length - l), c + (t.length - l));
    };
    h('card-number', 'input', e => k(e, 4));
    h('expiry-date', 'input', e => k(e, 2));
    h('payment-form', 'submit', e => {
      e.preventDefault();
      const b = document.getElementById('pay-button');
      b.disabled = true; b.innerText = 'Processing...';
      setTimeout(() => location.href = 'HotelBookingSuccess.jsp', 1500);
    });
  </script>
</body>
</html>
