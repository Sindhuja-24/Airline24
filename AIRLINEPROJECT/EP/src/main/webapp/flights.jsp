<html>
<head>
    <title>Flight Booking</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="Navbar.css">
    <link rel="stylesheet" href="nav.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://png.pngtree.com/thumb_back/fh260/background/20240522/pngtree-airplane-cockpit-view-image_15692867.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
        }

        .search-bar {
             display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }


        .flight-card {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .flight-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .flight-info .price {
            color: #007bff;
            font-size: 24px;
            font-weight: bold;
        }

        .book-btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }

        .book-btn:hover {
            background-color: #0056b3;
            color: #fff;
        }
    </style>
</head>
<body>
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

    <div class="container">
        <form action="flights.jsp" method="GET" class="search-bar" id="flight-search-form">
            <div>
                <label for="from-city">From:</label>
                <input type="text" id="from-city" name="fromCity" placeholder="Enter departure city" required>
            </div>
            <div>
                <label for="to-city">To:</label>
                <input type="text" id="to-city" name="toCity" placeholder="Enter destination city" required>
            </div>
            <div>
                <label for="departure-date">Departure:</label>
                <input type="date" id="departure-date" name="date" placeholder="dd-mm-yyyy" required>
            </div>
            <div>
                <label for="class">Class:</label>
                <select id="class" name="class">
                    <option value="Economy">Economy</option>
                    <option value="Business">Business</option>
                    <option value="First Class">First Class</option>
                </select>
            </div>
            <div>
                <label for="passengers">Passengers:</label>
                <select id="passengers" name="passengers">
                    <option value="1">1 Passenger</option>
                    <option value="2">2 Passengers</option>
                    <option value="3">3 Passengers</option>
                    <option value="4">4 Passengers</option>
                </select>
            </div>
            <button type="submit" class="search-button" id="search-btn">Search</button>
        </form>

        <!-- Flight Cards Section -->

        <!-- Flight 1 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Airlines</strong><br>Boeing 787<br>Flight SW101</div>
                <div><strong>08:00 AM</strong><br>New York<br>Terminal T4</div>
                <div>7h 30m<br>Gate G12</div>
                <div><strong>09:30 PM</strong><br>London</div>
                <div><span class="price">$549</span><br>150 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 2 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Express</strong><br>Airbus A350<br>Flight SW202</div>
                <div><strong>11:30 AM</strong><br>New York<br>Terminal T2</div>
                <div>8h 30m<br>Gate G05</div>
                <div><strong>01:00 AM</strong><br>Paris</div>
                <div><span class="price">$689</span><br>120 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 3 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Premium</strong><br>Boeing 777<br>Flight SW303</div>
                <div><strong>03:45 PM</strong><br>New York<br>Terminal T3</div>
                <div>12h 30m<br>Gate G15</div>
                <div><strong>05:15 AM</strong><br>Dubai</div>
                <div><span class="price">$829</span><br>180 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 4 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Elite</strong><br>Airbus A380<br>Flight SW404</div>
                <div><strong>10:00 AM</strong><br>New York<br>Terminal T1</div>
                <div>14h 30m<br>Gate G20</div>
                <div><strong>02:30 PM</strong><br>Tokyo</div>
                <div><span class="price">$1249</span><br>200 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 5 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Asia</strong><br>Boeing 787<br>Flight SW505</div>
                <div><strong>01:15 PM</strong><br>New York<br>Terminal T4</div>
                <div>17h 30m<br>Gate G08</div>
                <div><strong>06:45 AM</strong><br>Singapore</div>
                <div><span class="price">$1099</span><br>160 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 6 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings West</strong><br>Airbus A321<br>Flight SW606</div>
                <div><strong>04:00 PM</strong><br>Los Angeles<br>Terminal T6</div>
                <div>5h 20m<br>Gate G09</div>
                <div><strong>09:20 PM</strong><br>New York</div>
                <div><span class="price">$449</span><br>140 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 7 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Pacific</strong><br>Boeing 747<br>Flight SW707</div>
                <div><strong>07:00 PM</strong><br>San Francisco<br>Terminal T2</div>
                <div>11h 15m<br>Gate G12</div>
                <div><strong>08:15 AM</strong><br>Sydney</div>
                <div><span class="price">$1199</span><br>180 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 8 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Global</strong><br>Airbus A330<br>Flight SW808</div>
                <div><strong>06:00 AM</strong><br>Chicago<br>Terminal T3</div>
                <div>8h 45m<br>Gate G11</div>
                <div><strong>02:45 PM</strong><br>London</div>
                <div><span class="price">$579</span><br>130 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 9 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings United</strong><br>Boeing 737<br>Flight SW909</div>
                <div><strong>02:30 PM</strong><br>New York<br>Terminal T5</div>
                <div>6h 20m<br>Gate G07</div>
                <div><strong>08:50 PM</strong><br>Los Angeles</div>
                <div><span class="price">$499</span><br>110 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>

        <!-- Flight 10 -->
        <div class="flight-card">
            <div class="flight-info">
                <div><strong>SkyWings Europe</strong><br>Airbus A320<br>Flight SW010</div>
                <div><strong>05:45 PM</strong><br>Rome<br>Terminal T1</div>
                <div>9h 30m<br>Gate G04</div>
                <div><strong>03:15 AM</strong><br>New York</div>
                <div><span class="price">$789</span><br>90 seats left<br>
                    <a href="booking.jsp" class="book-btn">Book</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Set minimum date to today
            const dateInput = document.getElementById('departure-date');
            if (dateInput) {
                const today = new Date().toLocaleDateString('en-CA');
                dateInput.setAttribute('min', today);
            }

            // Form submission loading state
            const searchForm = document.getElementById('flight-search-form');
            const searchBtn = document.getElementById('search-btn');

            if (searchForm && searchBtn) {
                searchForm.addEventListener('submit', function() {
                    searchBtn.innerHTML = 'Searching...';
                    searchBtn.disabled = true;
                    searchBtn.style.opacity = '0.7';
                    searchBtn.style.cursor = 'not-allowed';
                });
            }
        });
    </script>
</body>
</html>
