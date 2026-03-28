<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Details Page</title>
    <link rel="stylesheet" href="HotelDetailPage.css">
    <link rel="stylesheet" href="nav.css">
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

    <div class="page-container">
        <!-- Background image -->
        <div class="background-image"></div>

        <!-- Content -->
        <div class="content-container">
            <div class="hotel-info">
                <h1>Grand Plaza Hotel</h1>
                <p>Experience luxury and comfort in the heart of the city.</p>
                <div class="amenities">
                    <span>Free WiFi</span>
                    <span>Restaurant</span>
                    <span>Spa</span>
                    <span>Conference Rooms</span>
                </div>
            </div>

            <!-- Room Categories -->
            <div class="room-categories">
                <!-- Standard Rooms -->
                <div class="room-category">
                    <h2>Standard Rooms</h2>
                    <p>Comfortable rooms for a pleasant stay</p>

                    <!-- Sample Room (Static Content for Example) -->
                    <div class="room">
                        <img src="https://images.unsplash.com/photo-1631049307264-da0ec9d70304?auto=format&fit=crop&q=80" alt="Room Image">
                        <div class="room-details">
                            <h3>Standard Room</h3>
                            <p>280 sq ft</p>
                            <p>Up to 2 guests</p>
                            <p>Price: $129/night</p>
                            <button onclick="bookRoom('std-ac-1')">Book Now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal for Room Details (Dynamic content rendered via JavaScript) -->
        <div id="room-details-modal" class="modal hidden">
            <div class="modal-content">
                <span class="close-btn" onclick="toggleModal()">\xd7</span>
                <div id="modal-body">
                    <!-- Room details will be inserted here -->
                </div>
            </div>
        </div>
    </div>

    <script>
        function toggleModal() {
            document.getElementById("room-details-modal").classList.toggle("hidden");
        }

        // Updated function to redirect to HotelPaymentPage.jsp
        function bookRoom(roomId) {
            window.location.href = `HotelPaymentPage.jsp`;
        }
    </script>
</body>
</html>
