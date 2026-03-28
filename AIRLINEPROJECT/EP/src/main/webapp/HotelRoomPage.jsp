<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Room Booking</title>
    <link rel="stylesheet" href="HotelRoomPage.css">
</head>
<body>
    <div class="relative min-h-screen">
        <div class="background-image">
            <div class="overlay"></div>
        </div>

        <div class="content">
            <div class="hotel-details">
                <h1>Grand Plaza Hotel</h1>
                <p>123 Main Street, New York</p>
                <div class="ratings">
                    <span>⭐ 4.8</span>
                    <span>(2,456 reviews)</span>
                </div>
            </div>

            <form action="/BookRoomServlet" method="POST" class="booking-form">
                <div>
                    <label for="checkIn">Check-in</label>
                    <input type="date" name="checkIn" id="checkIn" required>
                </div>
                <div>
                    <label for="checkOut">Check-out</label>
                    <input type="date" name="checkOut" id="checkOut" required>
                </div>
                <div>
                    <label for="guests">Guests</label>
                    <select name="guests" id="guests">
                        <option value="1">1 Guest</option>
                        <option value="2">2 Guests</option>
                        <option value="3">3 Guests</option>
                        <option value="4">4 Guests</option>
                    </select>
                </div>

                <div class="rooms">
                    <!-- Room Categories & Rooms will be injected dynamically from Java Servlet -->
                </div>

                <button type="submit">Book Now</button>
            </form>
        </div>

        <!-- Room Details Modal -->
        <div class="room-details-modal" id="roomDetailsModal">
            <div class="modal-content">
                <button class="close" onclick="closeRoomDetails()">×</button>
                <h2>Room Details</h2>
                <div class="room-images">
                    <!-- Room images will be inserted here -->
                </div>
                <div class="room-info">
                    <p id="roomDescription"></p>
                    <p>Price: $<span id="roomPrice"></span>/night</p>
                </div>
                <button onclick="bookRoom()">Book Now</button>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
