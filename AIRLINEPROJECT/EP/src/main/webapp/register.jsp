<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="Navbar.jsp" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="register.css">
    <link rel="stylesheet" type="text/css" href="Navbar.css">
</head>

<body>
    <div class="container">
        <h1>Register</h1>
        <form action="RegisterServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <div style="position: relative; display: flex; align-items: center; margin-bottom: 10px;">
                <input type="password" id="password" name="password" required style="flex: 1; margin-bottom: 0; padding-right: 50px;">
                <button type="button" id="togglePassword" aria-label="Toggle password visibility" style="position: absolute; right: 0; background: none; border: none; color: #007bff; cursor: pointer; padding: 10px; font-size: 0.8rem; height: 100%; display: flex; align-items: center;">Show</button>
            </div>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone Number</label>
            <input type="text" id="phone" name="phone" required>

            <label for="address">Address</label>
            <textarea id="address" name="address" required></textarea>

            <input type="submit" value="Register">
        </form>
        <p>Already a user? <a href="Login.jsp">Login</a></p>
    </div>
    <script>
        const togglePassword = document.querySelector('#togglePassword');
        const passwordInput = document.querySelector('#password');

        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.textContent = type === 'password' ? 'Show' : 'Hide';
        });
    </script>
</body>

</html>