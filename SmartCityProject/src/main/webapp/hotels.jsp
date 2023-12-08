<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <title>Hotels In Hyderabad</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  }  .card-title {
  color: #262626;
  font-size: 1.5em;
  line-height: normal;
  font-weight: 700;
  margin-bottom: 0.5em;
}

.small-desc {
  font-size: 1em;
  font-weight: 400;
  line-height: 1.5em;
  color: #452c2c;
}

.small-desc {
  font-size: 1em;
}

.go-corner {
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  width: 2em;
  height: 2em;
  overflow: hidden;
  top: 0;
  right: 0;
  background: linear-gradient(135deg, #6293c8, #384c6c);
  border-radius: 0 4px 0 32px;
}

.go-arrow {
  margin-top: -4px;
  margin-right: -4px;
  color: white;
  font-family: courier, sans;
}


.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: 0 -12px;  /* Adjust the margin values as needed */
    z-index: 1;
  }

  .card {
    flex: 0 0 calc(50% - 16px);
    position: relative;
    max-width: 300px;
    max-height: 420px;
    background-color: #f2f8f9;
    border-radius: 10px;
    padding: 2em 1.2em;
    margin: 12px; /* Adjust the margin values to control spacing between cards */
    text-decoration: none;
    z-index: 0;
    overflow: hidden;
    background: linear-gradient(to bottom, #c3e6ec, #a7d1d9);
    font-family: Arial, Helvetica, sans-serif;
  }

.card:before {
  content: '';
  position: absolute;
  z-index: -1;
  top: -16px;
  right: -16px;
  background: linear-gradient(135deg, #364a60, #384c6c);
  height: 32px;
  width: 32px;
  border-radius: 32px;
  transform: scale(1);
  transform-origin: 50% 50%;
  transition: transform 0.35s ease-out;
}

.card:hover:before {
  transform: scale(28);
}

.card:hover .small-desc {
  transition: all 0.5s ease-out;
  color: rgba(255, 255, 255, 0.8);
}

.card:hover .card-title {
  transition: all 0.5s ease-out;
  color: #ffffff;
}
.go-corner .go-arrow {
    text-decoration: none;
  }
  .explore-button {
    display: block;
    text-align: center;
    background-color: #ffcc00;
    color: #333;
    padding: 10px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
    margin-top: 10px;
  }

  .explore-button:hover {
    background-color: #444;
    color: #fff;
  }

    </style>
</head>
<body> 
<%@ include file="navbar.jsp" %>
<c:forEach items = "${hlist }" var = "h" >
<div class="card-container">
 <div class="card">
      <img src="displayhotelimage?id=${h.id}" alt="Product Image" height="200px" width="300px">
      <p class="card-title"><c:out value="${h.name}"></c:out></p>
      <p class="small-desc">
        <c:out value="${h.description}"></c:out><br>
        <strong><c:out value="${h.phone}"></c:out><br></strong>
        <strong><c:out value="${h.email}"></c:out></strong>
      </p>
      <div class="go-corner">
        <a href="${h.link}" target="_blank">→</a>
    </div>
    
    </div>
</div>
</c:forEach>


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
