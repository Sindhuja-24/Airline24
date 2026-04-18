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
        <p>&#128274; Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    const cardInput = document.getElementById('card-number');
    const expiryInput = document.getElementById('expiry-date');
    const form = document.getElementById('payment-form');
    const payBtn = document.getElementById('pay-button');

    const mask = (el, fmt, sep) => {
      el.addEventListener('input', (e) => {
        let cursor = el.selectionStart;
        const oldVal = el.value;
        if (e.inputType === 'deleteContentBackward' && oldVal[cursor] === sep) {
          el.value = oldVal.substring(0, cursor - 1) + oldVal.substring(cursor);
          cursor--;
        }
        el.value = fmt(el.value.replace(new RegExp(sep, 'g'), ''));
        const delta = el.value.length - oldVal.length;
        el.setSelectionRange(cursor + delta, cursor + delta);
      });
    };

    mask(cardInput, v => v.replace(/\D/g, '').match(/.{1,4}/g)?.join(' ') || '', ' ');
    mask(expiryInput, v => v.replace(/\D/g, '').match(/.{1,2}/g)?.join('/') || '', '/');

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      payBtn.disabled = true;
      payBtn.innerText = 'Processing...';
      setTimeout(() => { window.location.href = 'HotelBookingSuccess.jsp'; }, 1500);
    });
  </script>
</body>
</html>
