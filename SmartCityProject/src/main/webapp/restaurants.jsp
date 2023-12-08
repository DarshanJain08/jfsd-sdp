<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

@import
	url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,900;1,400;1,900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Playfair Display', serif;
}

body {
	background: url();
	background-size: cover;
	background-position: right;
	background-attachment: fixed;
}

#header {
	margin: 20px;
}

#header>h1 {
	text-align: center;
	font-size: 3rem;
}

#header>p {
	text-align: center;
	font-size: 1.5rem;
	font-style: italic;
}

.container {
	width: 100vw;
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	padding: 40px 20px;
}

.card {
	display: flex;
	flex-direction: column;
	width: 400px;
	margin-bottom: 60px;
}

.card>div {
	box-shadow: 0 15px 20px 0 rgba(0, 0, 0, 0.5);
}

.card-image {
	width: 400px;
	height: 250px;
}

.card-image>img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: bottom;
}

.card-text {
	margin: -30px auto;
	margin-bottom: -50px;
	height: 300px;
	width: 300px;
	background-color: #1D1C20;
	color: #fff;
	padding: 20px;
}

.card-meal-type {
	font-style: italic;
}

.card-title {
	font-size: 2.2rem;
	margin-bottom: 20px;
	margin-top: 5px;
}

.card-body {
	font-size: 1.25rem;
}

.card-price {
	width: 80px;
	height: 60px;
	background-color: #970C0A;
	color: #fff;
	margin-left: auto;
	font-size: 3.5rem;
	text-decoration: none;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div id="header">
    <h1>Hyderabad Flavours</h1>
    <p>Where Every Dish Tells a Tale of Hyderabad's Rich Heritage</p>
      </div>
    <div class="container">
    <div class="card">
      <div class="card-image">
        <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2669%2Ftrend20200113060319.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Breakfast/Eggs</p>
        <h2 class="card-title">Jewel Of Nizam</h2>
        <p class="card-body">Eggs Benedict with hollandaise sauce, crispy bacon and an assortment of garden herbs.</p>
      </div>
      <div><a href="https://goo.gl/maps/JyN7pZzKZVKdYtPx7" class="card-price" target="_blank">➤</a></div>
    </div>
      <div class="card">
      <div class="card-image">
        <img src="https://c.ndtvimg.com/2022-04/fq5cs53_biryani-doubletree-by-hilton_625x300_12_April_22.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Lunch/Meat</p>
        <h2 class="card-title"> Paradise Biriyani, Hyderabad</h2>
        <p class="card-body">A beef burger with wholewheat patty, side of gluten free fries</p>
      </div>
      <div><a href="https://goo.gl/maps/v3UNJZeAqhn7fPNB7" class="card-price" target="_blank">➤</a></div>
    </div>
      <div class="card">
      <div class="card-image">
        <img src="https://www.fabhotels.com/blog/wp-content/uploads/2018/08/Resize_290818_Almond-House.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Almond & Ice Creams</p>
        <h2 class="card-title">Almond House</h2>
        <p class="card-body">The traditional French soup made with onions and beef with a dollop of garlic and saffaron mayonise.</p>
      </div>
      <div><a href="https://goo.gl/maps/P2jMPcRmFYDqp7V8A" class="card-price" target="_blank">➤</a></div>
    </div>
      <div class="card">
      <div class="card-image">
        <img src="https://www.fabhotels.com/blog/wp-content/uploads/2018/08/resize_290818_Tatva_New.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Appetizers/Meat</p>
        <h2 class="card-title">Tatva,Jubilee Hills</h2>
        <p class="card-body">Chickens doused in wine, mushrooms, pork, onions and garlic.</p>
      </div>
      <div><a href="https://goo.gl/maps/Mzq4FX5LBWV4NfR18" class="card-price" target="_blank">➤</a></div>
    </div>
      <div class="card">
      <div class="card-image">
        <img src="https://www.fabhotels.com/blog/wp-content/uploads/2018/08/Resize_290818_ABs.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Appetizers/Meat</p>
        <h2 class="card-title">AB’s Absolute Barbecues</h2>
        <p class="card-body">Chickens doused in wine, mushrooms, pork, onions and garlic.</p>
      </div>
      <div><a href="https://goo.gl/maps/JMnZ81jzy3zmTA458" class="card-price" target="_blank">➤</a></div>

    </div>
      <div class="card">
      <div class="card-image">
        <img src="https://www.fabhotels.com/blog/wp-content/uploads/2018/08/Resize_290818_Over-the-Moon-Company.jpg">
      </div>
      <div class="card-text">
        <p class="card-meal-type">Appetizers/Meat</p>
        <h2 class="card-title">Over The Moon,Gachibowli</h2>
        <p class="card-body">Chickens doused in wine, mushrooms, pork, onions and garlic.</p>
      </div>
      <div><a href="https://goo.gl/maps/gv9Y8Gwcd65PjxDw9" class="card-price" target="_blank">➤</a></div>
    </div>
    </div>
</body>
</html>
