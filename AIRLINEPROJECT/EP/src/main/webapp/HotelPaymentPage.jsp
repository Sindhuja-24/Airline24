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
            <input type="text" id="card-number" name="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon" aria-hidden="true">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label for="card-name">Cardholder Name</label>
          <input type="text" id="card-name" name="cardName" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="expiry-date">Expiry Date</label>
            <div class="input-container">
              <input type="text" id="expiry-date" name="expiryDate" placeholder="MM/YY" maxlength="5" required>
              <span class="icon" aria-hidden="true">&#128197;</span>
            </div>
          </div>
          <div class="form-group">
            <label for="cvv">CVV</label>
            <div class="input-container">
              <input type="password" id="cvv" name="cvv" maxlength="3" placeholder="123" required>
              <span class="icon" aria-hidden="true">&#128274;</span>
            </div>
          </div>
        </div>

        <button type="submit" id="pay-button">Pay $200</button>
      </form>

      <script>
        const f = document.getElementById('payment-form'), c = document.getElementById('card-number'), e = document.getElementById('expiry-date'), b = document.getElementById('pay-button');
        const m = (el, p) => {
          el.oninput = () => {
            let v = el.value.replace(/\D/g, ''), s = el.selectionStart, l = el.value.length;
            if (p === 'c') v = v.match(/.{1,4}/g)?.join(' ') || v;
            else v = v.match(/.{1,2}/g)?.join('/') || v;
            el.value = (v || '').slice(0, el.maxLength);
            el.setSelectionRange(s + (el.value.length - l), s + (el.value.length - l));
          };
        };
        if(c) m(c, 'c'); if(e) m(e, 'e');
        f.onsubmit = (ex) => {
          ex.preventDefault(); b.disabled = true; b.textContent = 'Processing...';
          setTimeout(() => { f.submit(); }, 1500);
        };
      </script>

      <div class="secure-info">
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>
</body>
</html>
