<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMART CITY</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
          crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../static/css/Contactus.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <style >
    
    body::-webkit-scrollbar {
display: none;
}
body{
    overflow-x: hidden; /* Hide horizontal scrollbar */
}

button>a{
text-decoration:none;
color:black;
}
    .NavItems{
        list-style: none;
        display: flex;
        gap:1.8rem;
        font-size:22px;
        left=10px;
        font-weight: 400;
    }

    .NavItems > li > a{
        text-decoration: none;
        color:white;
    }

    li{
        width: fit-content;
    }


    .navbar{
        padding: 15px;
        background:transparent;
        color:white;
    }

    .login_btn > button{
        outline: none;
        border-radius: 50px;
        border: 2px solid white;
        padding: 10px;
        font-size: large;
        font-weight: 400;
        width:150px;
        background: transparent;
        color: white;

}



.home_contents{
    margin-top:0rem;
}
/* Update the .bitimage styles */
/* Update the .bitimage styles */
/* Update the .bitimage styles */
.bitimage {
    width: 100vw;
    height: 600px; /* Adjust the height as needed */
    position: fixed; /* Position the image fixed */
    top: 0; /* Position the image at the top */
    left: 0; /* Position the image at the left */
    z-index: -1; /* Place the image behind other content */
    overflow: hidden; /* Hide any overflowing content */
}

.bitimage > img {
    width: 100%;
    height: 100%;
    object-fit: fill;
}

/* Update the .home_contents styles to add margin-top */
.home_contents {
    margin-top: 10px; /* Add margin to push content below the image */
}
/* Update the carousel control styles */
.carousel-control-prev,
.carousel-control-next {
    top: 0%; /* Adjust the position of the controls vertically */
    /* Center the controls vertically */
}

/* Rest of your existing styles */

/* Rest of your existing styles */

/* Rest of your existing styles */


/* Rest of your existing styles */

.landtext{
    color: aliceblue;
}
.landtext > h1{
    padding-top: 80px;
    font-size:3.5rem;
}
.landbtn{
    padding-top: 50px;
    padding-left: 50px;
    display: flex;
    gap:2rem;
}
.landbtn > button{
    width:150px;
    padding: 15px;
    border-radius: 50px;
    outline: none;
    border: 2px solid white;
    background: transparent;
    color: white;
}

#netbanking{
    background-color: white;
    padding-top: 4rem;
    color: black;
    
}

.netbanktext{
    padding-top: 100px;
}

.netbanktext > ul>li >img{
    width: 30px;
    height: 30px;
    margin-right: 20px;
}

.netbanktext{
    padding-right: 50px;
}
.netbanktext >ul{
    margin-top: 2rem;
    text-align: left;
}

.netbanktext >ul>li{
    list-style: none;
    margin-top: 10px;
    font-size: larger;
}
.netbankbtn > button{
    padding: 10px;
    margin: 2rem;
    width:155px;
}

#services{
    background-color: white;
    padding-top: 1rem;
}
.services_img > img{
    width:175px;
    height:150px;
    margin:25px;
}
.card{
    align-items: center;
    width:400px;
    height: 400px;
    margin: 30px;
    border-radius: 20px;
    box-shadow:  20px 20px 60px #949494,
            -20px -20px 60px #ffffff;
}
.card >h6{
    margin: 35px;
    font-size: large;
    font-weight: 400;
    padding-left: 20px;

}





body {
   
  margin: 0;
  padding: 0;
  background-color:black;
  
  padding-bottom: 10px;
}

/* styles.css */


#contact {
  background-image: url('../images/2480553.jpg');
  background-size:  cover;
  
  background-position: center;
  
  background-repeat: no-repeat; /* Prevent the background from repeating */
}




.section-header {
  text-align: center;
  margin: 0 auto;
  padding: 1px 0;
  font: 300 60px 'Oswald', sans-serif;
  color:black;
  text-transform: uppercase;
  letter-spacing: 6px;
}

.contact-wrapper {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin: 0 auto;
  padding: 20px;
  position: relative;
  max-width: 840px;
}

/* Left contact page */
.form-horizontal {
  /*float: left;*/
  max-width: 400px;
  font-family: 'Lato';
  font-weight: 400;
}

.form-control, 
textarea {
  max-width: 400px;
  background-color:white;
  color:black;
  letter-spacing: 1px;
}

.send-button {
  margin-top: 15px;
  height: 34px;
  right: 5%;
  width: 400px;
  overflow: hidden;
  transition: all .2s ease-in-out;
}

.alt-send-button {
  width: 400px;
  height: 34px;
  
  transition: all .2s ease-in-out;
}

.send-text {
  display: block;
  margin-top: 10px;
  font: 700 12px 'Lato', sans-serif;
  letter-spacing: 2px;
}

.alt-send-button:hover {
  transform: translate3d(0px, -29px, 0px);
}

/* Begin Right Contact Page */
.direct-contact-container {
  max-width: 400px;
}

/* Location, Phone, Email Section */
.contact-list {
  list-style-type: none;
  margin-left: -30px;
  padding-right: 20px;
}

.list-item {
  line-height: 4;
  color: black;
}

.contact-text {
  font: 550 20px 'Lato', sans-serif;
  letter-spacing: 1.9px;
  color: black;
}

.place {
  margin-left: 62px;
}

.phone {
  margin-left: 56px;
}

.gmail {
  margin-left: 53px;
}

.contact-text a {
  color: black;
  text-decoration: none;
  transition-duration: 0.2s;
}

.contact-text a:hover {
  color: blue;
  text-decoration: none;
}


/* Social Media Icons */
.social-media-list {
  position: relative;
  font-size: 22px;
  text-align: center;
  width: 100%;
  margin: 0 auto;
  padding: 0;
}

.social-media-list li a {
  color: #fff;
}

.social-media-list li {
  position: relative; 
  display: inline-block;
  height: 60px;
  width: 60px;
  margin: 10px 3px;
  line-height: 60px;
  border-radius: 50%;
  color: #fff;
  background-color: #006D5B;
  cursor: pointer; 
  transition: all .2s ease-in-out;
}

.social-media-list li:after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 60px;
  height: 60px;
  line-height: 60px;
  border-radius: 50%;
  opacity: 0;
  box-shadow: 0 0 0 1px #006D5B;
  transition: all .2s ease-in-out;
}

.social-media-list li:hover {
  background-color: #fff; 
}

.social-media-list li:hover:after {
  opacity: 1;  
  transform: scale(1.12);
  transition-timing-function: cubic-bezier(0.37,0.74,0.15,1.65);
}

.social-media-list li:hover a {
  color: #000;
}

.copyright {
  font: 200 14px 'Oswald', sans-serif;
  color: #555;
  letter-spacing: 1px;
  text-align: center;
}

hr {
  border-color: rgba(255,255,255,.6);
}

/* Begin Media Queries*/
@media screen and (max-width: 850px) {
  .contact-wrapper {
    display: flex;
    flex-direction: column;
  }
  .direct-contact-container, .form-horizontal {
    margin: 0 auto;
  }  
  
  .direct-contact-container {
    margin-top: 60px;
    max-width: 300px;
  }    
  .social-media-list li {
    height: 60px;
    width: 60px;
    line-height: 60px;
  }
  .social-media-list li:after {
    width: 60px;
    height: 60px;
    line-height: 60px;
  }
}

@media screen and (max-width: 569px) {

  .direct-contact-container, .form-wrapper {
    float: none;
    margin: 0 auto;
  }  
  .form-control, textarea {
    
    margin: 0 auto;
  }
 
  
  .name, .email, textarea {
    width: 280px;
  } 
  
  .direct-contact-container {
    margin-top: 60px;
    max-width: 280px;
  }  
  .social-media-list {
    left: 0;
  }
  .social-media-list li {
    height: 55px;
    width: 55px;
    line-height: 55px;
    font-size: 2rem;
  }
  .social-media-list li:after {
    width: 55px;
    height: 55px;
    line-height: 55px;
  }
  
}
.about {
   background-color: white; /* Set the background color to white */
    color: black;
  display: flex;
  flex-flow: row wrap;
  align-items: center;
  justify-content: center;
  padding: 150px;
  position: relative;
}


  

.about-img {
  flex: 1;
}

.about-img img {
  width: 500px;
  height: 700px;
  box-shadow: 2px 2px 6px 0 rgba(0, 0, 0, 0.3);
}

.about-text {
  flex: 1;
  /*width: 100px;*/
  display: flex;
  flex-flow: column wrap;
}

.about-text small,
.about-text p,
.about-text input,
.about-text a {
  flex: 1;
  font-family: Roboto;
}

.about-text small {
  color: #ffc342;
  font-size: 18px;
}

.about-text h2 {
  flex: 1;
  font-family: Barlow Condensed;
  font-size: 60px;
  color: #191d34;
  width: 450px;
}

.about-text label {
  padding-bottom: 10px;
  color: #506172;
  font-weight: bolder;
  font-family: Roboto;
  letter-spacing: 1px;
}

.about-text p {
  width: 500px;
  line-height: 30px;
  color: #506172;
  font-weight: bolder;
  padding: 50px 0;
}

.about-text a {
  background-color: #fff;
  border: 2px solid #014b85;
  text-decoration: none;
  border-radius: 5px;
  width: 180px;
  padding: 20px;
  text-align: center;
  margin-top: 50px;
  color: #014b85;
  font-weight: bolder;
  font-size: 14px;
}

.about-text a:hover {
  background-color: #014b85;
  color: #fff;
}


@media screen and (max-width: 410px) {
  .send-button {
    width: 99%;
  }
}
/* Add any other specific styles for the section here */
/* Footer styles */
footer {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
}
 .card-link {
     display: block;
    text-decoration: none;
    border: 0px solid #ccc; /* Add your desired border styles */
    padding: 1px; /* Add your desired padding */
    text-align: center; /* Center-align the content */
    border-radius: 1px; /* Add rounded corners if desired */
    color: black; /* Add rounded corners if desired */
  }
   #chatbot-icon {
  width: 50px;
  top:0%; /* Set the width of the image */
  height: auto; /* Maintain the aspect ratio */
  display: block; /* Remove any potential extra space below the image */
  margin: 5px auto; /* Center the image horizontally with some top margin */
  border-radius: 5%; /* Make the image circular by using border-radius */
  border: 1px solid #ccc; /* Add a border around the image */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Add a subtle shadow for a 3D effect */
}
  
    </style>
</head>
<body>

<%-- JSP Expression for the image URL --%>
<%
    String imageUrl = "https://wallpaperaccess.com/full/1782501.jpg";
%>

<div class="container-l">
    <div class="row navbar">
        <div class="col-4">
            <h1>SMART CITY</h1>
        </div>
        <div class="col-1"></div>
        <div class="col-4">
            <ul class="NavItems">
                
                <li><a href="#services">Services</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                
                <li><a href="login">Explore</a></li>
                 <li>
  <a href="chatbot.html">
    <img id="chatbot-icon" src="https://media.istockphoto.com/id/1147779501/vector/chatbot-icon-with-virtual-support-service-bot-or-online-artificial-intelligence-robot.jpg?s=612x612&w=0&k=20&c=v48DyGDpKECd1OlHGrIOeAnGT-Eszx6le_QC2zt05u0=" alt="Chatbot Icon">
   
  </a>
</li>
               
            </ul>
        </div>
    </div>
   <section id="home">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://wallpaperaccess.com/full/1782501.jpg
                " class="d-block w-100" alt="..." height="635">
              </div>
             
              <!--https://wallpaperaccess.com/full/5778226.jpg-->
              <!--https://wallpaperaccess.com/full/1782501.jpg-->
              <div class="carousel-item">
                <img src="../images/india_blue.jpg" class="d-block w-100" alt="..."height="635">
              </div>
              <div class="carousel-item">
                <img src="../images/chennai.jpg" class="d-block w-100" alt="..."height="635">
              </div>
              <div class="carousel-item">
                <img src="../images/hyberdad.jpg" class="d-block w-100" alt="..."height="635">
              </div>
              <div class="carousel-item">
                <img src="../images/mumbaii.jpg" class="d-block w-100" alt="..."height="635">
              </div>
              
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    </section>

    <!-- Other sections and content remain the same -->
</div>
 
        <section id="services">
            <div class="container-md">
<div class="row"><h1 style="text-align: center;">Services</h1></div>
<br>
<div class="row">
    <div class="col-4">
    <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="https://img.freepik.com/free-vector/people-walking-sitting-hospital-building-city-clinic-glass-exterior-flat-vector-illustration-medical-help-emergency-architecture-healthcare-concept_74855-10130.jpg?size=626&ext=jpg&ga=GA1.1.354214406.1688563008&semt=ais" alt="" height="100px" width="200px">
            </div>
            <h4> HOSPITALS</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
        </a>
    </div>
   <div class="col-4">
    <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="../images/world-landmarks-icon-vector-23604947.jpg" alt="" height="100px" width="200px">
            </div>
            <h4>TOURIST PLACES</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
    </a>
</div>
    <div class="col-4">
     <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="https://media.istockphoto.com/id/1368585997/vector/flat-vector-illustration-of-group-of-people-shopping-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=e1nvU7wCGdFSq8mS5HLccOnwpkwTHgEHmd4RPUDgIeo=" alt="">
            </div>
            <h4>SHOPPING MALLS</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
        </a>
    </div>
    <div class="col-4">
     <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="https://static.vecteezy.com/system/resources/previews/012/001/342/original/car-rental-booking-reservation-and-sharing-using-service-mobile-application-with-route-or-points-location-in-hand-drawn-cartoon-flat-illustration-vector.jpg" alt="">
            </div>
            <h4>CAR RENTALS</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
        </a>
    </div>
    <div class="col-4">
     <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="https://static.vecteezy.com/system/resources/previews/016/186/326/non_2x/online-travel-ticket-store-through-transportation-and-journey-provider-app-for-booking-in-flat-cartoon-hand-drawn-template-illustration-vector.jpg" alt="">
            </div>
            <h4>AIRLINE-BOOKING</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
        </a>
    </div>
    <div class="col-4">
     <a href="login" class="card-link">
        <div class="card">
            <div class="services_img">
                <img src="https://img.freepik.com/premium-vector/indian-culture-concept_24640-73317.jpg" alt="">
            </div>
            <h4>HISTORY & CULTURE</h4>
            <h6>The security of the Customer is the Number One Priority for us.</h6>
        </div>
        </a>
    </div>
   
</div>
            </div>
            <br>
            <br>
        </section>
        <section class="about" id="about">
          <div class="about-background">
        
          </div> <!-- Background image container -->
          <div class="about-img">
            <img src="https://res.cloudinary.com/dxssqb6l8/image/upload/v1605293719/outdoor_tjjhxk.jpg">
          </div>
          <div class="about-text">
            <small>ABOUT OUR Project</small>
            <h2>Capture city moments</h2>
  <p>Cities and urban areas witness a massive wave of people coming from every corner in search of jobs, 
education, and even a better lifestyle. In the initial days after the move, people don’t know the main 
facilities, attractions, and services offered in the city. The smart city project seeks to address that by 
creating an integrated platform to store essential and related information to guide the newcomers in a city. The application will provide visitors, students, and job seekers information like hotels, renting 
facilities, transportation services, healthcare services, airline ticket booking, shopping landmarks, 
emergency helpline, and basically every information that one needs when in a new city. It is like a 
smart city guide for visitors. Users can connect to the application via the Internet and browse all the 
smart city web pages to get the details they need. This will make their movement across the city much 
more comfortable</p>
          
          </div>
        </section>
        <section id="contact">
  
  
                
              
                <br>
            <h1 class="section-header">Contact</h1>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="contact-wrapper">
            
            <!-- Left contact page --> 
              
              <form id="contact-form" class="form-horizontal" role="form">
                 
                <div class="form-group">
                  <div class="col-sm-12">
                    <input type="text" class="form-control" id="name" placeholder="NAME" name="name" value="" required>
                    <br>
                  </div>
                </div>
          
                <div class="form-group">
                  <div class="col-sm-12">
                    <input type="email" class="form-control" id="email" placeholder="EMAIL" name="email" value="" required>
                    <br>
                  </div>
                  
                </div>
          
                <textarea class="form-control" rows="10" placeholder="MESSAGE" name="message" required></textarea>
                
                <button class="btn btn-primary send-button" id="submit" type="submit">
  <a href="form.jsp" class="alt-send-button">
    <i class="fa fa-paper-plane"></i>SEND
  </a>
</button>

                <br>
                <br>
                <br>
                
                
              </form>
              
            <!-- Left contact page --> 
              
                <div class="direct-contact-container">
          
                  <ul class="contact-list">
                    <br>
                    <li class="list-item"><i class="fa fa-map-marker fa-2x"><span class="contact-text place">City, State</span></i></li>
                    
                    <li class="list-item"><i class="fa fa-phone fa-2x"><span class="contact-text phone"><a href="tel:1-212-555-5555" title="Give me a call">(212) 555-2368</a></span></i></li>
                    
                    <li class="list-item"><i class="fa fa-envelope fa-2x"><span class="contact-text gmail"><a href="mailto:#" title="Send me an email">hitmeup@gmail.com</a></span></i></li>
                    
                  </ul>
          
                  <hr>
                  <ul class="social-media-list">
                    <li><a href="#" target="_blank" class="contact-icon">
                      <i class="fa fa-github" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="#" target="_blank" class="contact-icon">
                      <i class="fa fa-codepen" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="#" target="_blank" class="contact-icon">
                      <i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="#" target="_blank" class="contact-icon">
                      <i class="fa fa-instagram" aria-hidden="true"></i></a>
                    </li>       
                  </ul>
                  <hr>
          
                
          
                </div>
              
            </div>
            
          </section>  
          <footer>

          </footer>
            
            
   
    
    
    
    
    
    <script>
        document.querySelector('#contact-form').addEventListener('submit', (e) => {
    e.preventDefault();
    e.target.elements.name.value = '';
    e.target.elements.email.value = '';
    e.target.elements.message.value = '';
  });

        </script>
    </div>

<%-- Your JavaScript code can be placed here if needed --%>

</body>
</html>
