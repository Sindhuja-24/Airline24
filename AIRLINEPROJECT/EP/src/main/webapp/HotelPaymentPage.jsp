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
    const cardNumber = document.getElementById('card-number');
    const expiryDate = document.getElementById('expiry-date');
    const paymentForm = document.getElementById('payment-form');
    const payButton = document.getElementById('pay-button');

    const formatInput = (input, formatFn) => {
      input.addEventListener('input', (e) => {
        const start = input.selectionStart;
        const previousValue = input.value;
        input.value = formatFn(input.value);
        const delta = input.value.length - previousValue.length;
        input.setSelectionRange(start + delta, start + delta);
      });
    };

    formatInput(cardNumber, (value) => {
      return value.replace(/\D/g, '').replace(/(.{4})/g, '$1 ').trim().slice(0, 19);
    });

    formatInput(expiryDate, (value) => {
      const v = value.replace(/\D/g, '').slice(0, 4);
      if (v.length >= 3) return v.slice(0, 2) + '/' + v.slice(2);
      return v;
    });

    paymentForm.addEventListener('submit', (e) => {
      e.preventDefault();
      payButton.disabled = true;
      payButton.textContent = 'Processing...';
      setTimeout(() => {
        window.location.href = 'HotelBookingSuccess.jsp';
      }, 1500);
    });
  </script>
</body>
</html>
