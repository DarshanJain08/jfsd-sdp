<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>HYDERABAD CITY</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }
    .welcome-section {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      margin-top: 50px;
      padding: 0 20px;
      text-align: center;
      margin-bottom: 0px;
    }
    .welcome-heading {
      font-size: 36px;
      margin-bottom: 10px;
      color: #333;
    }
    .greetings {
      font-size: 24px;
      color: #555;
      margin-bottom: 20px;
    }
    .greetings em {
      font-weight: bold;
      color: #111112;
    }
    .gallery-section {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }
    .gallery-image {
      width: 49%;
      margin-bottom: 10px;
    }
    .social-media-section {
      margin-top: 20px;
      text-align: center;
      display: flex;
      justify-content: center;
    }
    .social-media-icon {
      font-size: 24px;
      color: #b90c18;
      margin: 0 10px;
      transition: color 0.3s;
    }
    .social-media-icon:hover {
      color: #d3151e;
    }
    .social-media-icons {
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .login-register-button {
      position: absolute;
      top: 20px;
      right: 20px;

      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
    }
    
  </style>
</head>
<body>

<%@ include file="navbar.jsp" %>
  <div class="login-register-button">
   <%@ include file="icon.jsp" %>
   
  </div>
  
  <div class="welcome-section">
    <h1 class="welcome-heading" >Welcome to the City of Dreams</h1>
    <p class="greetings">
      <em>Explore the city through the Navbar.</em><br>
      <em>You can avail bookings through this website after registration/login.</em>
    </p>
  </div>

  <div class="gallery-section">
    <img src="../images/hydsrhteam.jpg" alt="Gallery Image 1" class="gallery-image">
    <img src="../images/hyderabad.jpg" alt="Gallery Image 2" class="gallery-image">
    <!-- Add more gallery images as needed -->
  </div>

  <div class="social-media-section">
    <h2>Connect with Us</h2>
    <div class="social-media-icons">
      <a href="https://www.facebook.com/hyderabadcity1/" class="social-media-icon"><i class="fab fa-facebook"></i></a>
      <a href="https://www.instagram.com/hyderabad.city/?hl=en" class="social-media-icon"><i class="fab fa-instagram"></i></a>
      <a href="https://twitter.com/hydcitypolice?lang=en" class="social-media-icon"><i class="fab fa-twitter"></i></a>
    </div>
  </div>
  <script>
  const navbar = document.getElementById('navbar');
  const openBtn = document.querySelector('.open-btn');

  function toggleNavbar() {
    if (navbar.style.left === '-300px' || navbar.style.left === '') {
      navbar.style.left = '0';
      openBtn.classList.add('active');
    } else {
      navbar.style.left = '-300px';
      openBtn.classList.remove('active');
    }
  }

  function closeNavbar() {
    navbar.style.left = '-300px';
    openBtn.classList.remove('active');
  }

  const navLinks = document.querySelectorAll('.navbar a');
  for (const link of navLinks) {
    link.addEventListener('click', closeNavbar);
  }
  
  </script>
</body>
</html>
