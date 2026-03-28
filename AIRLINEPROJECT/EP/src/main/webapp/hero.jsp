<%@ page import="java.util.List" %>
<%@ page import="com.example.Destination" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Search and Featured Destinations</title>
    <link rel="stylesheet" href="hero.css">
    <link rel="stylesheet" href="featureddestination.css">
</head>
<body>
  <!-- Hero Section with Flight Search Form -->
  <div class="hero-container">
    <div class="hero-background">
      <div class="hero-overlay"></div>
    </div>

    <div class="hero-content">
      <h1>Discover Your Next Adventure</h1>
      <p>Find and book the best flights and hotels worldwide</p>

      <form method="GET" action="FlightSearchServlet" class="search-form">
        <div class="form-group">
          <label>From</label>
          <input type="text" name="fromCity" list="fromCities" placeholder="Departure City" required />
          <datalist id="fromCities">
            <!-- Filled by Servlet -->
          </datalist>
        </div>

        <div class="form-group">
          <label>To</label>
          <input type="text" name="toCity" list="toCities" placeholder="Arrival City" required />
          <datalist id="toCities">
            <!-- Filled by Servlet -->
          </datalist>
        </div>

        <div class="form-group">
          <label>Date</label>
          <input type="date" name="date" min="${minDate}" required />
        </div>

        <div class="form-group">
          <label>Passengers</label>
          <select name="passengers">
            <option value="1">1 Adult</option>
            <option value="2">2 Adults</option>
            <option value="3">3 Adults</option>
            <option value="4">4 Adults</option>
          </select>
        </div>

        <button type="submit" class="search-button">
          <span>Search Flights</span>
        </button>
      </form>
    </div>
  </div>

  <!-- Featured Destinations Section -->
  <section class="featured-section">
      <div class="container">
          <h2 class="section-title">Featured Destinations</h2>
          <div class="destinations-grid">
              <c:forEach var="dest" items="${destinations}">
                  <div class="destination-card">
                      <div class="destination-image" style="background-image: url('${dest.image}')"></div>
                      <div class="destination-details">
                          <h3>${dest.city}</h3>
                          <p>${dest.country}</p>
                          <div class="price-and-button">
                              <span class="price">$${dest.price}</span>
                              <button class="book-button">Book Now</button>
                          </div>
                      </div>
                  </div>
              </c:forEach>
          </div>
      </div>
  </section>
</body>
</html>
