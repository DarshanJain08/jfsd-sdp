<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  
    .gallery-section {
    margin-top: 20px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
  }
  .gallery-image {
    width: 48%;
    margin-bottom: 10px;
  }
    /* Reset some default styles */
body, h1, h2, p {
    margin: 0;
    padding: 0;
}

/* Basic styling */
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #fff;
}

header {
    background-color: #448EE4;
    color: #fff;
    text-align: center;
    padding: 1.8em;
}
.header-container {
    display: flex;
    align-items: center;
}
.header-text {
    flex-grow: 1;
    text-align: center;
}
        #google_translate_element {
            margin-top: 20px;
            text-align: right;
        }
        .goog-te-combo {
            width: auto !important;
            padding: 5px;
            margin: 0 !important;
        }
section img {
    max-width: 100%;
    height: auto;
    top: 0%;
    display: block;
    margin: 1em auto;
}
.image-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1em;
}

.image-grid img {
    max-width: 90%;
    height: auto;
    display: block;
    transition: transform 0.3s ease; /* Add a transition for smooth zoom effect */
}

.image-grid img:hover {
    transform: scale(1.1); /* Zoom in by 10% on hover */
}
nav ul {
    list-style-type: none;
    display: flex;
    background-color: #FF8C00;
    padding: 1em;
}
nav li {
    margin: 0 1em;
}
nav a {
    text-decoration: none;
    color: #fff;
}

section {
    padding: 2em;
}
#map iframe {
    width: 100%;
    max-width: 800px;
    height: 450px;
    border: none;
    margin: 1em auto;
    display: block;
}
#statistics .stat-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    margin-top: 1em;
}
#statistics .chart-container {
    width: 30%;
    margin: 1em;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
#gallery .image-gallery {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

#gallery .image-box {
    width: 30%;
    margin: 1%;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#gallery .image-box img {
    width: 100%;
    height: auto;
    display: block;
    transition: transform 0.2s ease;
}

#gallery .image-box img:hover {
    transform: scale(1.05);
}
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
}

.chart-container {
  width: 80%;
  max-width: 800px;
  margin: 50px auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
footer {
    text-align: center;
    padding: 1em;
    background-color: #333;
    color: #fff;
}
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<header class="header-container">
    <img src="../images/toppng.com-book-classified-ads-online-for-hyderabad-newspapers-charminar-logo-clip-art-699x474 (1).png" alt="" width="70">
    <div class="header-text">
        <h1>Hyderabad / హైదరాబాద్ / حیدرآباد ضلع</h1>
    </div>
    <div id="google_translate_element"></div>
</header>
<nav>
    <ul>
        <li><a href="#about">About</a></li>
        <li><a href="#culture">Culture</a></li>
        <li><a href="#festivals">Festivals</a></li>
        <li><a href="#politics">Politics</a></li>
    </ul>
</nav>

<!-- Your HTML content remains mostly the same as provided earlier -->

<section id="about">
     
  <img src="https://thumbs.dreamstime.com/b/charminar-hyderabad-india-vector-india-indian-sketch-vector-illustration-vector-illustration-architecture-building-famous-monument-134356536.jpg?w=768" alt="Hyderabad City" width="400" height="100" >
  <p>Hyderabad is the capital of southern India's Telangana state. A major center for the technology industry, it's home to many upscale restaurants and shops. Its historic sites include Golconda Fort, a former diamond-trading center that was once the Qutb Shahi dynastic capital. The Charminar, a 16th-century mosque whose 4 arches support towering minarets, is an old city landmark near the long-standing Laad Bazaar.<br>
      What is Hyderabad famous for?
List of tourist attractions in Hyderabad - Wikipedia
The city is noted for its monuments which includes the masterpiece of Charminar and the fort of Golconda. There are a multitude of masjids, temples, churches and bazaars in the city. The tourism industry forms an important role in the economy of Hyderabad.
  </p>
</section>

<section id="culture">
    <h2>Culture of Hyderabad</h2>
 
  <img src="https://www.ritiriwaz.com/wp-content/uploads/2020/02/Telangana-culture-1.jpg" alt="Hyderabad Culture">
  <p>The culture of Hyderabad, also known as Hyderabadi Tehzeeb (حیدرآبادي تہذیب ) or Dakhini Tehzeeb (دکني تہذیب ),[1] is the traditional cultural lifestyle of the Telugu people and Hyderabadi Muslims, and characterizes distinct linguistic and cultural traditions of North and South India, which meet and mingle in the city and erstwhile kingdom.[2] This blending was the result of the geographic location of the region and the variety of historical dynasties that ruled the city across different periods—its inception by the Qutub Shahi dynasty in 1591 AD, the occupation by the Mughal Empire and its decline, and the patronage under the Asaf Jahi dynasty.</p>
</section>

<section id="festivals">
     <h2>Festivals in Hyderabad</h2>
  <p>Description of festivals celebrated in Hyderabad.</p>
  <div class="image-grid">
      <img src="https://stylesatlife.com/wp-content/uploads/2021/09/Bathukamma-festival.jpg" alt="Festival 1">
      <img src="https://stylesatlife.com/wp-content/uploads/2023/06/Ramzan-important-festivals-of-telangana.jpg" alt="Festival 2">
      <img src="https://files.prokerala.com/news/photos/imgs/1200/people-participate-in-bonalu-celebrations-in-724073.jpg" alt="Festival 3">
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<section id="gallery">
    <h2>Hyderabad Famous Food</h2>
  <div class="image-gallery">
      <div class="image-box">
          <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/biryani.jpg" alt="Image 1">
      </div>
      <div class="image-box">
          <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/haleem.jpg" alt="Image 2">
      </div>
      <div class="image-box">
          <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/kebab.jpg" alt="Image 3">
      </div>
      <div class="image-box">
        <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/dosa.jpg" alt="Image 3">
    </div>
    <div class="image-box">
      <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/kache-gosht-ki-biriyani.jpg" alt="Image 3">
  </div>
  <div class="image-box">
    <img src="https://www.bakingo.com/blog/wp-content/uploads/2023/01/irani-chai.jpg" alt="Image 3">
</div>
      <!-- Add more image-box elements as needed -->
  </div>
</section>




<section id="gallery">
  <h2>Hyderabad Gallery</h2>
  <div class="image-gallery">
      <div class="image-box">
          <img src="https://cdn.s3waas.gov.in/s36c524f9d5d7027454a783c841250ba71/uploads/bfi_thumb/2018110376-1-olwa28m8h59a1vfgvyof1fxqm55dq2qovhjo95c4bk.jpg" alt="Image 1">
      </div>
      <div class="image-box">
          <img src="https://images.unsplash.com/photo-1566808907623-51b8fc382454?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBiYW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60" alt="Image 2">
      </div>
      <div class="image-box">
          <img src="https://st.depositphotos.com/1141099/3255/i/450/depositphotos_32559665-stock-photo-traffic-in-hyderabad.jpg" alt="Image 3">
      </div>
      <!-- Add more image-box elements as needed -->
  </div>
</section>

<section id="politics">
    <h2>Politics in Hyderabad</h2>

        <div class="image-box">
            <img src="https://images.hindustantimes.com/img/2022/04/27/550x309/f17efd80-c657-11ec-8b2d-b6dbe1b60323_1651086064090.jpg" alt="Image 3">
        </div>
        <!-- Add more image-box elements as needed -->
    </div>
      
      <p>The Indian state of Telangana was founded in 2014. Its territory had formerly been part of Andhra Pradesh. The Telangana movement was instrumental in the creation of the new state, and Telangana Rashtra Samithi, a party which led the Telangana movement after 2001, forms the government in the Telangana Legislative Assembly under Chief Minister K. Chandrashekar Rao.</p>
</section>

<section id="map">
    <h2>Hyderabad Map</h2>
      <p>Explore Hyderabad on the map:</p>
      <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3809.196988600571!2d78.47472601487704!3d17.385044685481843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb98ab43b46e85%3A0x4d25c48ec1669bca!2sHyderabad%2C%20Telangana%2C%20India!5e0!3m2!1sen!2s!4v1564569803592!5m2!1sen!2s"
          width="600"
          height="450"
          style="border:0"
          allowfullscreen=""
          loading="lazy">
      </iframe>
</section>

<footer>
    <p></p>
</footer>

<!-- Include the Google Translate API -->
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement(
            { pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
            'google_translate_element'
        );
    }
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>
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

