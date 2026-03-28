<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Booking Confirmation</title>
  <link rel="stylesheet" href="HotelBookingSuccess.css">
</head>
<body>
  <!-- Background Overlay -->
  <div class="background">
    <div class="overlay"></div>
  </div>

  <!-- Confirmation Content -->
  <div class="content">
    <div class="confirmation-box">
      <svg class="icon check-circle" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="green">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5 4a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      <h1 class="title">Booking Confirmed!</h1>
      <p class="description">Your room has been booked successfully. A confirmation email has been sent to your email.</p>

      <!-- Booking Details Section -->
      <div class="details-box">
        <h2>Booking Details</h2>
        <div class="details-grid">
          <div>
            <p class="label">Room Type</p>
            <p class="value">Deluxe Room</p>
          </div>
          <div>
            <p class="label">Category</p>
            <p class="value">AC Room</p>
          </div>
          <div>
            <p class="label">Check-in</p>
            <p class="value">2023-11-12</p>
          </div>
          <div>
            <p class="label">Check-out</p>
            <p class="value">2023-11-15</p>
          </div>
          <div>
            <p class="label">Guests</p>
            <p class="value">2</p>
          </div>
          <div>
            <p class="label">Total Amount</p>
            <p class="value">$599</p>
          </div>
        </div>
      </div>

      <!-- Action Buttons -->
      <div class="action-buttons">
        <button class="btn download">Download Confirmation</button>
        <button class="btn return-home">Return Home</button>
      </div>
    </div>
  </div>
</body>
</html>
