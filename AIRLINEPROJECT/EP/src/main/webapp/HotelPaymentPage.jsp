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
            <input type="text" id="card-number" name="card-number" placeholder="1234 5678 9012 3456" maxlength="19" required>
            <span class="icon" aria-hidden="true">&#128179;</span>
          </div>
        </div>

        <div class="form-group">
          <label for="card-name">Cardholder Name</label>
          <input type="text" id="card-name" name="card-name" placeholder="JOHN DOE" required>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="expiry-date">Expiry Date</label>
            <div class="input-container">
              <input type="text" id="expiry-date" name="expiry-date" placeholder="MM/YY" maxlength="5" required>
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

      <div class="secure-info">
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    const formatInput = (el, regex, template) => el.addEventListener('input', e => {
      let v = e.target.value.replace(/\D/g, ''), start = e.target.selectionStart, oldLen = e.target.value.length;
      e.target.value = template(v);
      let newPos = start + (e.target.value.length - oldLen);
      e.target.setSelectionRange(newPos, newPos);
    });

    formatInput(document.getElementById('card-number'), /\D/g, v => v.replace(/(.{4})/g, '$1 ').trim());
    formatInput(document.getElementById('expiry-date'), /\D/g, v => v.length > 2 ? v.substring(0,2) + '/' + v.substring(2,4) : v);

    document.getElementById("payment-form").addEventListener("submit", e => {
      e.preventDefault();
      const btn = e.target.querySelector('button[type="submit"]');
      btn.disabled = true; btn.textContent = "Processing Payment..."; btn.classList.add('opacity-75', 'cursor-not-allowed');
      setTimeout(() => window.location.href = "HotelBookingSuccess.jsp", 2000);
    });
  </script>
</body>
</html>
