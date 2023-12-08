<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
          body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  }
*,
*:before,
*:after {
  box-sizing: border-box;
}

html {
  font-size: 18px;
  line-height: 1.5;
  font-weight: 300;
  color: #333;
  font-family: "Nunito Sans", sans-serif;
}

body {
  margin: 0;
  padding: 0;
  height: 100vh;
  background-color: white;
  background-attachment: fixed;
}

.content {
  display: flex;
  margin: 0 auto;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  max-width: 1000px;
}

.heading {
  width: 100%;
  margin-left: 1rem;
  font-weight: 900;
  font-size: 1.618rem;
  text-transform: uppercase;
  letter-spacing: 0.1ch;
  line-height: 1;
  padding-bottom: 0.5em;
  margin-bottom: 1rem;
  position: relative;
}

.heading:after {
  display: block;
  content: '';
  position: absolute;
  width: 60px;
  height: 4px;
  background: linear-gradient(135deg, adjust-hue(white, -20deg), white);
  bottom: 0;
}

.description {
  width: 100%;
  margin-top: 0;
  margin-left: 1rem;
  margin-bottom: 3rem;
}

.card {
  color: inherit;
  cursor: pointer;
  width: calc(33% - 2rem);
  min-width: calc(33% - 2rem);
  height: 400px;
  min-height: 400px;
  perspective: 1000px;
  margin: 1rem;
  position: relative;
}

@media screen and (max-width: 800px) {
  .card {
    width: calc(50% - 2rem);
  }
}

@media screen and (max-width: 500px) {
  .card {
    width: 100%;
  }
}

.front,
.back {
  display: flex;
  border-radius: 6px;
  background-position: center;
  background-size: cover;
  text-align: center;
  justify-content: center;
  align-items: center;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  transform-style: preserve-3d;
  transition: ease-in-out 600ms;
}

.front {
  background-size: cover;
  padding: 2rem;
  font-size: 1.618rem;
  font-weight: 600;
  color: #fff;
  overflow: hidden;
  font-family: Poppins, sans-serif;
}

.front:before {
  position: absolute;
  display: block;
  content: '';
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, adjust-hue(white, -20deg), white);
  opacity: 0.25;
  z-index: -1;
}

.card:hover .front {
  transform: rotateY(180deg);
}

.card:nth-child(even):hover .front {
  transform: rotateY(-180deg);
}

.back {
  background: hsl(180, 74%, 54%);
  transform: rotateY(-180deg);
  padding: 0 2em;
}

.back .button {
  background: linear-gradient(135deg, adjust-hue(white, -20deg), white);
}

.back .button:before {
  box-shadow: 0 0 10px 10px rgba(white, 0.25);
  background-color: rgba(white, 0.25);
}

.card:hover .back {
  transform: rotateY(0deg);
}

.card:nth-child(even) .back {
  transform: rotateY(180deg);
}

.card:nth-child(even):hover .back {
  transform: rotateY(0deg);
}

.button {
  height: 40px;
  transform: translateZ(40px);
  cursor: pointer;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  font-weight: bold;
  color: #fff;
  padding: 0.5em 1em;
  border-radius: 100px;
  font: inherit;
  border: none;
  position: relative;
  transform-style: preserve-3d;
  transition: 300ms ease;
  background-color: black;
}

.button:before {
  transition: 300ms ease;
  position: absolute;
  display: block;
  content: '';
  transform: translateZ(-40px);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  height: calc(100% - 20px);
  width: calc(100% - 20px);
  border-radius: 100px;
  left: 10px;
  top: 16px;
}

.button:hover {
  transform: translateZ(55px);
}

.button:hover:before {
  transform: translateZ(-55px);
}

.button:active {
  transform: translateZ(20px);
}

.button:active:before {
  transform: translateZ(-20px);
  top: 12px;
}

.bordered-image {
  border: 4px solid #333; /* You can adjust the border width and color as needed */
}
    </style>
</head>
<body>  
<%@ include file="navbar.jsp" %>
  <div class="content">
    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/osmaniahyd.jpg)">
      </div>
      <div class="back">
        <div>
          <h3>Osmania University</h3>
          <b>Address:</b> Amberpet, Hyderabad, Telangana
          <h4>Phone: 040 2709 8043</h4>
          <b>Email</b> : osmania@gmail.com
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank" >Explore</button>
        </div>
      </div>
    </div>
    
    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/iiithyd.jpeg)">
      </div>
      <div class="back">
        <div>
          <h3>IIIT Hyderabad</h3>
          <b>Address : </b> Professor CR Rao Rd, Gachibowli, Hyderabad, Telangana 500032
          <h4>Phone: 040 6653 1000</h4>
          <b>Email</b> : iith@gmail.com
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank">Explore</button>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/bitshyd.jpg)">
      </div>
      <div class="back">
        <div>
          <h3>BITS Hyderabad</h3>
          <b>Address : </b> Professor CR Rao Rd, Gachibowli, Hyderabad, Telangana 500032
          <h4>Phone: 040 6653 1000</h4>
          <b>Email</b> : bitsh@gmail.com 
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank">Explore</button>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/isbhyd.jpg)">
      </div>
      <div class="back">
        <div>
          <h3>Indian School of Business</h3>
          <b>Address: </b>Gachibowli, Hyderabad, Telangana 500111
          <h4>Phone: 040 2300 7000</h4>
          <b>Email</b> : isbhyd@gmail.com
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank">Explore</button>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/cbithyd.jpg)">
      </div>
      <div class="back">
        <div>
          <h3>CBIT Hyderabad</h3>
          <b>Address:</b> Osman Sagar Rd, Kokapet, Gandipet, Hyderabad, Telangana 500075
          <h4>Phone: 084669 97201</h4>
          <b>Email</b> : cbit@gmail.com
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank">Explore</button>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="front bordered-image" style="background-image: url(../images/jntuhhyd.jpg)">
      </div>
      <div class="back">
        <div>
          <h3>JNTU Hyderabad</h3>
          <b>Address:</b> F9VR+8H2, Ashok Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085
          <h4>Phone: 040 2315 8661</h4>
          <b>Email</b> : jntuh@gmail.com
          <button class="button custom-button" href="https://www.google.com/maps/search/?api=1&query=Hyderabad" target="_blank">Explore</button>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
