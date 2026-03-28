<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotels Page</title>
  <link rel="stylesheet" href="HotelsPage.css">
  <link rel="stylesheet" href="Navbar.css">
  <link rel="stylesheet" href="nav.css">
  <script src="https://cdn.jsdelivr.net/npm/lucide-icons/dist/lucide.min.js"></script>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="main-menu top-menu">
    <ul>
      <li class="active"><a href="homePage.jsp">Home</a></li>
      <li><a href="Login.jsp">Login</a></li>
      <li><a href="booking.jsp">Booking</a></li>
      <li><a href="flights.jsp">Flights</a></li>
      <li><a href="HotelsPage.jsp">Hotels</a></li>
      <li><a href="about.jsp">About Us</a></li>
      <li><a href="contact.jsp">Contact Us</a></li>
    </ul>
  </nav>

  <!-- Main container for the Hotels Page -->
  <div class="container">

    <!-- Header and Search Filters -->
    <header class="header">
      <div class="search-filters">
        <div class="filter">
          <label for="location">Location</label>
          <input type="text" id="location" value="New York">
          <i class="lucide-map-pin"></i>
        </div>

        <div class="filter">
          <label for="check-in">Check-in</label>
          <input type="date" id="check-in">
          <i class="lucide-calendar"></i>
        </div>

        <div class="filter">
          <label for="check-out">Check-out</label>
          <input type="date" id="check-out">
          <i class="lucide-calendar"></i>
        </div>

        <div class="filter">
          <label for="guests">Guests</label>
          <select id="guests">
            <option value="1">1 Guest</option>
            <option value="2" selected>2 Guests</option>
            <option value="3">3 Guests</option>
            <option value="4">4 Guests</option>
          </select>
          <i class="lucide-users"></i>
        </div>
      </div>
    </header>

    <!-- List of Hotels -->
    <section class="hotels-list">
      <div class="hotel-card">
        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&q=80" alt="Grand Plaza Hotel">
        <div class="hotel-info">
          <h3>Grand Plaza Hotel</h3>
          <p>Manhattan, New York</p>
          <!-- View Details Button with Redirection -->
          <button onclick="showHotelDetails('Grand Plaza Hotel')">View Details</button>
        </div>
      </div>
      <div class="hotel-card">
        <img src="https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&q=80" alt="Skyline Suites">
        <div class="hotel-info">
          <h3>Skyline Suites</h3>
          <p>Brooklyn, New York</p>
          <!-- View Details Button with Redirection -->
          <button onclick="showHotelDetails('Skyline Suites')">View Details</button>
        </div>
      </div>
      <div class="hotel-card">
        <img src="https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&q=80" alt="Harbor View Inn">
        <div class="hotel-info">
          <h3>Harbor View Inn</h3>
          <p>Queens, New York</p>
          <!-- View Details Button with Redirection -->
          <button onclick="showHotelDetails('Harbor View Inn')">View Details</button>
        </div>
      </div>
    </section>
  </div>

  <script>
    // Function to redirect to HotelDetailsPage.jsp with hotel name as a query parameter
    function showHotelDetails(hotelName) {
      // Redirect to HotelDetailsPage.jsp with hotel name as a URL parameter
      window.location.href = "HotelDetailsPage.jsp";
    }
  </script>

</body>
</html>
