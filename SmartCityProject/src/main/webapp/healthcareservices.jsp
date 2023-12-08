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
  * {
	box-sizing: border-box;
}

body {
	font-family: "Open Sans", sans-serif;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
	gap: 2rem;
	justify-content: center;
	align-items: center;
	background: hsl(187 40% 98%);
}

img {
	display: block;
	width: 50%;
}

h2 {
	margin: 0;
	font-size: 1.4rem;
}

@media (min-width: 50em) {
	h2 {
		font-size: 1.8rem;
	}
}

.cta {
	--shadowColor: 187 60% 40%;
	display: flex;
	flex-wrap: wrap;
	background: hsl(179, 49%, 53%);
	max-width: 50rem;
	width: 100%;
	box-shadow: 0.65rem 0.65rem 0 hsl(var(--shadowColor) / 1);
	border-radius: 0.8rem;
	overflow: hidden;
	border: 0.5rem solid;
  margin-bottom: 2rem;
  margin-left:150px;
}

.cta img {
	aspect-ratio: 3 / 2;
	object-fit: cover;
	flex: 1 1 300px;
	outline: 0.5rem solid;
}

.cta__text-column {
	padding: min(2rem, 5vw) min(2rem, 5vw) min(2.5rem, 5vw);
	flex: 1 0 50%;
}

.cta__text-column > * + * {
	margin: min(1.5rem, 2.5vw) 0 0 0;
}

.cta a {
	display: inline-block;
	color: black;
	padding: 0.5rem 1rem;
	text-decoration: none;
	background: hsl(195, 9%, 91%);
	border-radius: 0.6rem;
	font-weight: 700;
	border: 0.35rem solid;
}
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
    <article class="cta">
        <img src='../images/yashodahospitalhyd.jpg'>
        <div class="cta__text-column">
            <h2>YASHODA HOSPITAL</h2>
            <p>India’s Most Advanced Multi-Specialty Hospital.<strong>Number of Beds-2100</strong><br><br> 
            24/7 Emergency Services & Care <strong>||</strong> Right Diagnosis & Treatment <strong>||</strong> Best Team of Experts</p>
            <p><Address>Rajbhavan Road, Somajiguda, Hyderabad</Address>Phone: +91 6366920627<br>
            Email:query@yashodamail.com</p>
            <a href="https://www.yashodahospitals.com/location/somajiguda//?utm_source=Google-Business-Page&utm_medium=Somajiguda" target="_blank" >Book Appointment</a>
            <a href="https://goo.gl/maps/KLsxmbbLLfvf1k2G8" target="_blank" >Directions</a>
        </div>
    </article>
  
    <article class="cta">
        <img src='../images/starthospitalshyd'>
        <div class="cta__text-column">
            <h2>STAR HOSPITAL</h2>
            <p>One of the leading Multi Speciality Hospital in Hyderabad, India, Star Hospitals provides top-notch quality diagnostic services and best-in-class treatments. <strong>24x7 Service</strong><br><br>
            Ambulance Service<strong>||</strong>Neurosurgeons<br>
            Orthopedics<strong>||</strong>Cardiologists
            <p><Address>Road.No.10,Banjara Hills,Hyderabad</Address>Phone: 040-44 777777<br>
            Email:exceint@starhospitals.co.in   
            </p>
            <a href="https://starhospitals.in/" target="_blank">Book Appointment</a>
            <a href="https://goo.gl/maps/oky7gzEVPQdmSyk56" target="_blank">Directions</a>
        </div>
    </article>

    <article class="cta">
        <img src='../images/kimshyderabad'>
        <div class="cta__text-column">
            <h2>KIMS</h2>
            <p>KIMS Hospitals is one of the leading 1800 bed multi super speciality hospital in Hyderabad providing healthcare services for Cardiology, Neurology <strong>Number of Beds-4000</strong> <br><br>
            Andrology and Infertility Center <strong>||</strong> Arthoscopy Center<strong>||</strong>
            Bone and Joint Center
            <p><Address>Chitrapuri Colony,Gachibowli,Hyderabad</Address>Phone:  
            040-44885000<br>
            Email:assistance@kimshospitals.com </p>
            </p>
            <a href="https://www.kimshospitals.com/" target="_blank">Book Appointment</a>
            <a href="hhttps://goo.gl/maps/YqLVVwwrXHspQYmV6" target="_blank">Directions</a>
        </div>
    </article>

    <article class="cta">
        <img src='../images/Gandhi-Hospital-hyd.jpg' alt='Small blue-grey yellow-breasted bird'>
        <div class="cta__text-column">
            <h2>GANDHI HOSPITAL</h2>
            <p>Presently with operational bed strength of 2200, it is a premier institution of Post-doctoral medical education and training<br><br>
            Government Hospital <strong>||</strong> First Open Heart Surgery <strong>||</strong> 24x7 Service
            <p><Address>Padmarao Nagar Secunderabad</Address>Phone:040-27505566<br>
            Email:supdt_gandhihospital@yahoo.co.in</p>
            </p>
            <a href="https://www.gandhihospital.telangana.gov.in/index.html" target="_blank">Book Appointment</a>
            <a href="https://goo.gl/maps/Pr3mALvoMU8Byagn6" target="_blank">Directions</a>
        </div>
    </article>
</body>
</html>
