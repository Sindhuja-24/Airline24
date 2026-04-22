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

      <div class="secure-info">
        <p><span aria-hidden="true">&#128274;</span> Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    const formatCard = (v) => v.replace(/\D/g, '').match(/.{1,4}/g)?.join(' ').substring(0, 19) || '';
    const formatExpiry = (v) => {
      const digits = v.replace(/\D/g, '');
      return digits.length > 2 ? digits.substring(0, 2) + '/' + digits.substring(2, 4) : digits;
    };

    const applyMask = (id, formatter) => {
      const el = document.getElementById(id);
      el.addEventListener('input', () => {
        const start = el.selectionStart;
        const prev = el.value;
        const next = formatter(prev);
        if (prev !== next) {
          el.value = next;
          const delta = next.length - prev.length;
          el.setSelectionRange(start + delta, start + delta);
        }
      });
    };

    applyMask('card-number', formatCard);
    applyMask('expiry-date', formatExpiry);

    document.getElementById('payment-form').addEventListener('submit', function(e) {
      e.preventDefault();
      const btn = document.getElementById('pay-button');
      btn.disabled = true;
      btn.innerText = 'Processing Payment...';
      setTimeout(() => {
        window.location.href = 'HotelBookingSuccess.jsp';
      }, 2000);
    });
  </script>
</body>
</html>
