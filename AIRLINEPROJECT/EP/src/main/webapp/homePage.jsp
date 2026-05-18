<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
  <link rel="stylesheet" href="homePage.css">
  <link rel="stylesheet" href="Navbar.css">
  <link rel="stylesheet" href="nav.css">
</head>
<body>
<nav class="main-menu top-menu">
                <ul>
                    <li class="active"><a href="homePage.jsp">Home</a></li>                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="flights.jsp">Flights</a></li>
                    <li><a href="HotelsPage.jsp">Hotels</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
  <!-- Hero Section -->
  <section class="hero-section">
    <div class="hero-overlay">
      <div class="hero-content">
        <h1>Discover Your Next Adventure</h1>
        <p>Find and book the best flights and hotels worldwide</p>
        <form action="flights.jsp" method="GET" class="search-form" id="flight-search-form">
          <label for="from-city" class="sr-only">Departure City</label>
          <input type="text" id="from-city" name="fromCity" placeholder="Departure City" required>

          <label for="to-city" class="sr-only">Arrival City</label>
          <input type="text" id="to-city" name="toCity" placeholder="Arrival City" required>

          <label for="departure-date" class="sr-only">Departure Date</label>
          <input type="date" id="departure-date" name="date" required>

          <label for="passengers-select" class="sr-only">Number of Passengers</label>
          <select id="passengers-select" name="passengers">
            <option value="1">1 Adult</option>
            <option value="2">2 Adults</option>
            <option value="3">3 Adults</option>
            <option value="4">4 Adults</option>
          </select>
          <button type="submit" id="search-button">Search Flights</button>
        </form>
      </div>
    </div>
  </section>

  <!-- Featured Destinations Section -->
  <section class="featured-destinations">
    <h2>Featured Destinations</h2>
    <div class="destinations-container">
      <div class="destination-card">
        <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1502602898657-3e91760cbb34?auto=format&fit=crop&q=80');"></div>
        <div class="destination-details">
          <h3>Paris</h3>
          <p>France</p>
          <span class="price">$499</span>
          <button class="book-button">Book Now</button>
        </div>
      </div>

      <div class="destination-card">
        <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?auto=format&fit=crop&q=80');"></div>
        <div class="destination-details">
          <h3>Tokyo</h3>
          <p>Japan</p>
          <span class="price">$799</span>
          <button class="book-button">Book Now</button>
        </div>
      </div>

      <div class="destination-card">
        <div class="destination-image" style="background-image: url('https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?auto=format&fit=crop&q=80');"></div>
        <div class="destination-details">
          <h3>New York</h3>
          <p>USA</p>
          <span class="price">$399</span>
          <button class="book-button">Book Now</button>
        </div>
      </div>
    </div>
  </section>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const dateInput = document.getElementById('departure-date');
      if (dateInput) {
        const today = new Date().toISOString().split('T')[0];
        dateInput.setAttribute('min', today);
      }

      const searchForm = document.getElementById('flight-search-form');
      const searchButton = document.getElementById('search-button');

      if (searchForm && searchButton) {
        searchForm.addEventListener('submit', function() {
          searchButton.disabled = true;
          searchButton.textContent = 'Searching...';
        });
      }
    });
  </script>
</body>
</html>
