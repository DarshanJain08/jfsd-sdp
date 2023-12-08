<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
     * {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
  body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  }

  h1 {
	font-size: 5.25vmin;
	text-align: center;
	color: white;
}
p {
	font-size: max(10pt, 2.5vmin);
	line-height: 1.4;
	color: #0e390e;
	margin-bottom: 1.5rem;
}

.card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-left: 20px;  
    }

.wrap {
	display: flex;
	flex-wrap: nowrap;
	justify-content: space-between;
	width: 85vmin;
	height: 25em;
	margin: 2rem auto;
	border: 8px solid;
	background-color: #f5f5f5;
	transition: .3s ease-in-out;
	position: relative;
	overflow: hidden;
  width: calc(30% - 2px);
  margin-right: 150px;
  margin-left: 100px; /* Adjust the width as needed */
  margin-bottom: 20px;
}
.overlay {
	position: relative;
	display: flex;
	width: 100%;
	height: 100%;
	padding: 1rem .75rem;
	background: #9ff4ff;
	transition: .4s ease-in-out;
	z-index: 2;
}
.overlay-content {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	width: 15vmin;
	height: 100%;
	padding: .5rem 0 0 .5rem;
	border: 3px solid;
	border-image: 
    	linear-gradient(
      	to bottom, 
      	#AEA724 5%,
      	forestgreen 35% 65%,
      	#AEA724 95%
    	) 0 0 0 100%;
	transition: .3s ease-in-out .2s;
	z-index: -3;
}
.image-content1 {
	position: absolute;
	top: 0;
	right: 0;
	width: 60vmin;
	height: 100%;
	background-image: url("../images/charminarhyd.jpg");
	background-size: cover;
	transition: .3s ease-in-out;
	/* border: 1px solid green; */
}
.image-content2 {
	position: absolute;
	top: 0;
	right: 0;
	width: 60vmin;
	height: 100%;
	background-image: url("../images/jagannathtemplehyd.jpg");
	background-size: cover;
	transition: .3s ease-in-out;
	/* border: 1px solid green; */
}
.image-content3 {
	position: absolute;
	top: 0;
	right: 0;
	width: 60vmin;
	height: 100%;
	background-image: url("../images/museumhyd.jpg");
	background-size: cover;
	transition: .3s ease-in-out;
	/* border: 1px solid green; */
}
.image-content4 {
	position: absolute;
	top: 0;
	right: 0;
	width: 60vmin;
	height: 100%;
	background-image: url("../images/buddha.jpg");
	background-size: cover;
	transition: .3s ease-in-out;
	/* border: 1px solid green; */
}
.inset {
	max-width: 50%;
	margin: 0.25em 1em 1em 0;
	border-radius: 0.25em;
	float: left;
}

.dots {
	position: absolute;
	bottom: 1rem;
	right: 2rem;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	width: 55px;
	height: 4vmin;
	transition: .3s ease-in-out .3s;
}
.dot {
	width: 14px;
	height: 14px;
	background: yellow;
	border: 1px solid indigo;
	border-radius: 50%;
	transition: .3s ease-in-out .3s;
}

.text {
	position: absolute;
	top: 0;
	right: 0;
	width: 60vmin;
	height: 100%;
	padding: 3vmin 4vmin;
	background: #fff;
	box-shadow: inset 1px 1px 15px 0 rgba(0 0 0 / .4);
	overflow-y: scroll;
}

.wrap:hover .overlay
 {
	transform: translateX(-60vmin);
}
.wrap:hover .image-content1 {
	width: 30vmin;
}
.wrap:hover .image-content2 {
	width: 30vmin;
}
.wrap:hover .image-content3 {
	width: 30vmin;
}
.wrap:hover .image-content4 {
	width: 30vmin;
}
.wrap:hover .overlay-content {
	border: none;
	transition-delay: .2s;
	transform: translateX(60vmin);
}
.wrap:hover .dots {
	transform: translateX(1rem);
}
.wrap:hover .dots .dot {
	background: white;
}


/* Animations and timing delays */
.animate {
  animation-duration: 0.7s;
  animation-timing-function: cubic-bezier(.26, .53, .74, 1.48);
  animation-fill-mode: backwards;
}
/* Pop In */
.pop { animation-name: pop; }
@keyframes pop {
  0% {
    opacity: 0;
    transform: scale(0.5, 0.5);
  }
  100% {
    opacity: 1;
    transform: scale(1, 1);
  }
}

/* Slide In */
.slide { animation-name: slide; }
@keyframes slide {
  0% {
    opacity: 0;
    transform: translate(4em, 0);
  }
  100% {
    opacity: 1;
    transform: translate(0, 0);
  }
}

/* Slide Left */
.slide-left { animation-name: slide-left; }
@keyframes slide-left {
  0% {
    opacity: 0;
    transform: translate(-40px, 0);
  }
  100% {
    opacity: 1;
    transform: translate(0, 0);
  }
}

.slide-up {animation-name: slide-up;}
@keyframes slide-up {
	0% {
		opacity: 0;
		transform: translateY(3em);
	}
	100% {
		opacity: 1;
		transform: translateY(0);
	}
}

.delay-1 {
  animation-delay: 0.3s;
}
.delay-2 {
  animation-delay: 0.6s;
}
.delay-3 {
  animation-delay: 0.9s;
}
.delay-4 {
  animation-delay: 1.2s;
}
.delay-5 {
  animation-delay: 1.5s;
}
.delay-6 {
  animation-delay: 1.8s;
}
.delay-7 {
  animation-delay: 2.1s;
}
.delay-8 {
  animation-delay: 2.4s;
}
  .map-button {
        display: block;
        margin: 0 auto;
        padding: 10px 20px;
        background-color: #007bff; /* Change to your desired color */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
  </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
  <div class="card-container">
    <div class="wrap animate pop">
      <div class="overlay">
        <div class="overlay-content animate slide-left delay-2">
          <h1 class="animate slide-left pop delay-4" style="color: #222;">Charminar</h1>
        </div>
        <div class="image-content1 animate slide delay-5"></div>
        <div class="dots animate">
          <div class="dot animate slide-up delay-6"></div>
          <div class="dot animate slide-up delay-7"></div>
          <div class="dot animate slide-up delay-8"></div>
        </div>
      </div>
      <div class="text">
        <p><img class="inset" src="../images/charminarhyd.jpg" alt="" /></p>
        <p>
          The Charminar (lit. 'four minarets') is a monument located in Hyderabad, Telangana, India. Constructed in 1591, the landmark is a symbol of Hyderabad and officially incorporated in the emblem of Telangana.
          The Charminar's long history includes the existence of a mosque on its top floor for more than 425 years.
        </p>
        <p>
          While both historically and religiously significant, it is also known for its popular and busy local markets surrounding the structure, and has become one of the most frequented tourist attractions in Hyderabad. Charminar is also a site of numerous festival celebrations, such as Eid-ul-adha and Eid al-Fitr, as it is adjacent to the city's main mosque, the Makkah Masjid.
        </p>
        <a href="https://www.google.com/maps?q=Hyderabad" target="_blank" class="map-button">View on Google Maps</a>
      </div>
    </div>
    <div class="wrap animate pop">
		<div class="overlay">
			<div class="overlay-content animate slide-left delay-2">
				<h1 class="animate slide-left pop delay-4" style="color: #222;">Jagannath Temple</h1>
			</div>
			<div class="image-content2 animate slide delay-5"></div>
					<div class="dots animate">
						<div class="dot animate slide-up delay-6"></div>
						<div class="dot animate slide-up delay-7"></div>
						<div class="dot animate slide-up delay-8"></div>
					</div>
		</div>
			<div class="text">
				<p><img class="inset" src="../images/jagannathtemplehyd.jpg" alt="" />
        <p>The Jagannath Temple in Hyderabad, India,Telangana, is a modern temple built by the Odia community of the city of Hyderabad dedicated to the Hindu God Jagannath. The temple located near Banjara hills Road no.12 (twelve) in Hyderabad is famous for its annual Rathyatra festival attended by thousands of devotees. Jagannath means Lord of the Universe. The temple which was constructed during 2009 recently lies in Center of Hyderabad City.</p> <p>It is said that this is a replica of original Jagannath Temple of Puri (Odisha) in context of design. The most attracting portion of this temple is its "Shikhara" (the peak/top) measuring around 70 feet in height. The red color of the temple is due to the usage of sandstone and around 60 stone carvers got the blessing to carve this temple. </p>
        </p>
        <button onclick="window.open('https://www.google.com/maps?q=Hyderabad', '_blank')" class="map-button">View on Google Maps</button>
			</div>
	</div>

  <div class="wrap animate pop">
		<div class="overlay">
			<div class="overlay-content animate slide-left delay-2">
				<h1 class="animate slide-left pop delay-4"style="color: #222;">Salar Jung Museum</h1>
			</div>
			<div class="image-content3 animate slide delay-5"></div>
					<div class="dots animate">
						<div class="dot animate slide-up delay-6"></div>
						<div class="dot animate slide-up delay-7"></div>
						<div class="dot animate slide-up delay-8"></div>
					</div>
		</div>
			<div class="text">
				<p><img class="inset" src="../images/museumhyd.jpg" alt="" /></p>
        <p>The Salar Jung Museum, located in Hyderabad, India, is one of the most impressive and renowned museums. It houses an extensive collection of art, artifacts, and other historical objects, dating from the 1st century to the 20th century. It is the third-largest museum in the country. The building itself is a masterpiece of architectural design, featuring a blend of styles that incorporate both Eastern and Western elements.</p><p>The museum houses the largest one-man collection of antiques in the world. Collections include The Veiled Rebecca and other huge collections of artefacts dating back several centuries. Apart from galleries, there is a reference library, reading room, publication and education section, chemical conservation lab, sales counter, cafeteria etc.</p>
        <button onclick="window.open('https://www.google.com/maps?q=Hyderabad', '_blank')" class="map-button">View on Google Maps</button>
			</div>
	</div>

  <div class="wrap animate pop">
		<div class="overlay">
			<div class="overlay-content animate slide-left delay-2">
				<h1 class="animate slide-left pop delay-4" style="color: #222;">Hussain Sagar</h1>
				
			</div>
			<div class="image-content4 animate slide delay-5"></div>
					<div class="dots animate">
						<div class="dot animate slide-up delay-6"></div>
						<div class="dot animate slide-up delay-7"></div>
						<div class="dot animate slide-up delay-8"></div>
					</div>
		</div>
			<div class="text">
				<p><img class="inset" src="../images/buddha.jpg" alt="" /></p>
        <p>Hyderabad is the capital of the state of Telangana (separated from Andhra Pradesh on 2 June 2014). Between 1983 and 1989, N. T. Rama Rao served as the Chief Minister of Andhra Pradesh. During his tenure, he spent large sums to erect several statues of people from the region's political and religious history. During his visit to New York, he saw the Statue of Liberty and was inspired by the efforts to restore it. He said "I wanted something like that great place to visit... That would have been my contribution to society.</p><p>Rama Rao chose to depict Gautama Buddha because "he was a humanitarian who told the whole truth to the people. It is our pride</p>
        <button onclick="window.open('https://www.google.com/maps?q=Hyderabad', '_blank')" class="map-button">View on Google Maps</button>
			</div>
	</div>
  </div>
</body>
</html>
