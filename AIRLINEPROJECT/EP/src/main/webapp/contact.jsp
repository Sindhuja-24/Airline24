<!-- contact.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  <link rel="stylesheet" href="contact.css">
   <link rel="stylesheet" href="Navbar.css">
    <link rel="stylesheet" href="nav.css">
</head>
<body>
<nav class="main-menu top-menu">
                <ul>
                    <li><a href="homePage.jsp">Home</a></li>                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="flights.jsp">Flights</a></li>
                    <li><a href="HotelsPage.jsp">Hotels</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li class="active"><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>

    <div class="content relative z-10 pt-16">
      <div class="container max-w-7xl mx-auto px-4 py-16">
        <div class="text-center mb-16">
          <h1 class="heading text-4xl font-bold text-white mb-4">Contact Us</h1>
          <p class="subtitle text-xl text-gray-200">
            We're here to help and answer any question you might have
          </p>
        </div>

        <div class="contact-options grid grid-cols-1 lg:grid-cols-3 gap-8 mb-16">
          <div class="option bg-white/90 backdrop-blur-sm p-6 rounded-lg shadow-md text-center">
            <div class="icon phone-icon"></div>
            <h3 class="option-heading text-xl font-semibold mb-2">Phone Support</h3>
            <p class="option-text text-gray-600">+1 (555) 123-4567</p>
            <p class="option-text text-gray-600">Mon-Fri: 9:00 AM - 6:00 PM</p>
          </div>

          <div class="option bg-white/90 backdrop-blur-sm p-6 rounded-lg shadow-md text-center">
            <div class="icon mail-icon"></div>
            <h3 class="option-heading text-xl font-semibold mb-2">Email Support</h3>
            <p class="option-text text-gray-600">support@skywings.com</p>
            <p class="option-text text-gray-600">24/7 Email Support</p>
          </div>

          <div class="option bg-white/90 backdrop-blur-sm p-6 rounded-lg shadow-md text-center">
            <div class="icon location-icon"></div>
            <h3 class="option-heading text-xl font-semibold mb-2">Office Address</h3>
            <p class="option-text text-gray-600">123 Travel Street</p>
            <p class="option-text text-gray-600">New York, NY 10001</p>
          </div>
        </div>

        <div class="contact-form bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-8">
          <h2 class="form-heading text-2xl font-bold mb-6">Send us a Message</h2>
          <form action="ContactServlet" method="POST" class="form-grid grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
              <label class="label block text-sm font-medium text-gray-700 mb-1">Full Name</label>
              <input type="text" name="fullName" required class="input w-full p-2 border rounded-md focus:ring-2 focus:ring-blue-600 focus:border-transparent" />
            </div>
            <div>
              <label class="label block text-sm font-medium text-gray-700 mb-1">Email</label>
              <input type="email" name="email" required class="input w-full p-2 border rounded-md focus:ring-2 focus:ring-blue-600 focus:border-transparent" />
            </div>
            <div class="md:col-span-2">
              <label class="label block text-sm font-medium text-gray-700 mb-1">Subject</label>
              <input type="text" name="subject" required class="input w-full p-2 border rounded-md focus:ring-2 focus:ring-blue-600 focus:border-transparent" />
            </div>
            <div class="md:col-span-2">
              <label class="label block text-sm font-medium text-gray-700 mb-1">Message</label>
              <textarea name="message" rows="4" required class="textarea w-full p-2 border rounded-md focus:ring-2 focus:ring-blue-600 focus:border-transparent"></textarea>
            </div>
            <div class="md:col-span-2">
              <button type="submit" class="submit-button w-full bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700">Send Message</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
