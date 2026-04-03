<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel Payment Page</title>
  <link rel="stylesheet" href="HotelPaymentPage.css">
  <link rel="stylesheet" href="Navbar.css">
  <script src="https://cdn.jsdelivr.net/npm/lucide-icons@0.226.0/dist/lucide.min.js"></script>
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
            <i data-lucide="credit-card" class="icon" aria-hidden="true"></i>
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
              <i data-lucide="calendar" class="icon" aria-hidden="true"></i>
            </div>
          </div>
          <div class="form-group">
            <label for="cvv">CVV</label>
            <div class="input-container">
              <input type="password" id="cvv" maxlength="3" placeholder="123" required>
              <i data-lucide="lock" class="icon" aria-hidden="true"></i>
            </div>
          </div>
        </div>

        <button type="submit" id="pay-button">Pay $200</button>
      </form>

      <div class="secure-info">
        <p><i data-lucide="lock" class="icon" style="position: static; display: inline-block; transform: none; vertical-align: middle; margin-right: 5px;" aria-hidden="true"></i> Your payment information is secure and encrypted.</p>
      </div>
    </div>
  </div>
  <script>
    // Initialize Lucide icons
    lucide.createIcons();

    // Card number masking (4-4-4-4)
    document.getElementById('card-number').addEventListener('input', function (e) {
      let cursor = e.target.selectionStart;
      let value = e.target.value.replace(/\D/g, '');
      let formattedValue = '';
      for (let i = 0; i < value.length; i++) {
        if (i > 0 && i % 4 === 0) formattedValue += ' ';
        formattedValue += value[i];
      }

      let oldLength = e.target.value.length;
      e.target.value = formattedValue;

      // Adjust cursor position
      if (cursor < oldLength) {
        e.target.setSelectionRange(cursor, cursor);
      }
    });

    // Expiry date masking (MM/YY)
    document.getElementById('expiry-date').addEventListener('input', function (e) {
      let cursor = e.target.selectionStart;
      let value = e.target.value.replace(/\D/g, '');
      let formattedValue = value;

      if (value.length > 2) {
        formattedValue = value.slice(0, 2) + '/' + value.slice(2, 4);
      } else if (value.length === 2 && e.inputType !== 'deleteContentBackward') {
        formattedValue = value + '/';
      }

      let oldLength = e.target.value.length;
      e.target.value = formattedValue;

      // Adjust cursor position if not at the end
      if (cursor < oldLength) {
        e.target.setSelectionRange(cursor, cursor);
      }
    });

    document.getElementById("payment-form").addEventListener("submit", function (e) {
      e.preventDefault();
      const payBtn = document.getElementById("pay-button");
      payBtn.innerHTML = "Processing Payment...";
      payBtn.disabled = true;
      payBtn.classList.add('opacity-75', 'cursor-not-allowed');

      setTimeout(() => {
        // Simulate successful payment and redirect
        window.location.href = "HotelBookingSuccess.jsp";
      }, 2000);
    });
  </script>
</body>
</html>
