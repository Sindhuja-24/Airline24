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
          <label for="cardholder-name">Cardholder Name</label>
          <input type="text" id="cardholder-name" name="cardholder-name" placeholder="JOHN DOE" required>
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
        <p><span aria-hidden="true">&#128274;</span> Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>

  <script>
    const paymentForm = document.getElementById('payment-form');
    const payButton = document.getElementById('pay-button');
    const cardNumberInput = document.getElementById('card-number');
    const expiryDateInput = document.getElementById('expiry-date');

    // Real-time Card Number formatting (4-4-4-4)
    cardNumberInput.addEventListener('input', (e) => {
      const cursor = e.target.selectionStart;
      const originalValue = e.target.value;
      const value = originalValue.replace(/\D/g, '');
      const formattedValue = value.match(/.{1,4}/g)?.join(' ') || '';

      if (originalValue !== formattedValue) {
        e.target.value = formattedValue;
        // Adjust cursor position if necessary
        const diff = formattedValue.length - originalValue.length;
        e.target.setSelectionRange(cursor + diff, cursor + diff);
      }
    });

    // Real-time Expiry Date formatting (MM/YY)
    expiryDateInput.addEventListener('input', (e) => {
      const cursor = e.target.selectionStart;
      const originalValue = e.target.value;
      let value = originalValue.replace(/\D/g, '');
      let formattedValue = value;
      if (value.length > 2) {
        formattedValue = value.substring(0, 2) + '/' + value.substring(2, 4);
      }

      if (originalValue !== formattedValue) {
        e.target.value = formattedValue;
        const diff = formattedValue.length - originalValue.length;
        e.target.setSelectionRange(cursor + diff, cursor + diff);
      }
    });

    paymentForm.addEventListener('submit', (e) => {
      e.preventDefault();

      // Visual feedback: Disable button and show loading state
      payButton.disabled = true;
      payButton.textContent = 'Processing Payment...';
      payButton.style.opacity = '0.7';
      payButton.style.cursor = 'not-allowed';

      // Simulate network delay then redirect
      setTimeout(() => {
        window.location.href = 'HotelBookingSuccess.jsp';
      }, 1500);
    });
  </script>
</body>
</html>
