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
/* Colors */
:root {
	--color-1: #2c3e50;
	--color-2: #1abc9c;
	--color-3: #2ecc71;
}

/* Breakpoints */
:root {
	--sm: 320px;
	--med: 768px;
	--lg: 1024px;
}

*, *:before, *:after {
	box-sizing: border-box;
	outline: none;
}

html {
	font-family: 'Roboto', sans-serif;
	font-size: 16px;
	font-weight: 300;
	line-height: 1.5;
	color: #444;
}

body {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	width: 130%;
	height: 100vh;
}

figure {
	/* ... Existing styles ... */
	position: relative;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width: 100%;
	max-width: 900px;
	height: 567px;
	border-radius: 10px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
	overflow: hidden;
	z-index: 0; /* Add z-index */
}

figure:hover {
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
}

figure h1 {
	position: relative;
	z-index: 1; /* Adjusted z-index */
}

figure:hover h1 {
	opacity: 0;
	transform: scale(0);
}

figure:hover img {
	transform: scale(1.25);
}

figure:hover figcaption {
	bottom: 0;
}

h1 {
	position: absolute;
	top: 50px;
	left: 20px;
	margin: 0;
	bottom: 0;
	padding: 0;
	color: white;
	font-size: 40px;
	font-weight: 100;
	line-height: 1;
	opacity: 1;
	transform: scale(1);
	transition: 0.25s ease;
	z-index: 999;
}

img {
	height: 100%;
	background-size: cover;
	transition: 0.25s;
}

figcaption {
	position: absolute;
	bottom: -64%;
	left: 0;
	width: 100%;
	margin: 0;
	padding: 10px;
	background-color: rgba(0, 0, 0, 0.85);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
	color: white;
	line-height: 1;
	transition: 0.25s;
}

figcaption h3 {
	margin: 0 0 20px;
	padding: 0;
}

figcaption p {
	font-size: 14px;
	line-height: 1.75;
}

figcaption button {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 10px 0 0;
	padding: 10px 30px;
	background-color: var(--color-2);
	border: none;
	border-radius: 5px;
	color: white;
	font-size: 14px;
	cursor: pointer;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #0074D9; /* Set the background color you want */
	color: #fff; /* Set the text color you want */
	text-decoration: none;
	border-radius: 5px; /* Rounded corners for the button */
	font-weight: bold;
	transition: background-color 0.3s;
	/* Add a smooth transition effect for the background color */
}

.button:hover {
	background-color: #0056b3; /* Change the background color on hover */
}

.spacer {
	margin-right: 275px; /* Adds space to the right of an element */
	margin-bottom: 20px; /* Adds space below an element */
	line-height: 1.5; /* Adjusts space within text */
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div>
		<p>
			<span class="spacer"></span>
		</p>
	</div>
	<figure class="figure">

		<h1>Inorbit Mall</h1>
		<img
			src="https://wallpapers.com/images/featured/shopping-mall-j2r4d7nxio7voui4.jpg"
			alt="" />
		<figcaption>

			<p>Pellentesque habitant morbi tristique senectus et netus et
				malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
				vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
				amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
				placerat eleifend leo.</p>
			<a href="https://maps.app.goo.gl/hVTatUZyVRWYbPMb6" class="button">More
				Info</a>

		</figcaption>
	</figure>
	<figure class="image-block">
		<h1>GVK One Mall</h1>
		<img
			src="https://images.unsplash.com/photo-1580793241553-e9f1cce181af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2hvcHBpbmclMjBtYWxsfGVufDB8fDB8fHww&w=1000&q=80"
			alt="" />
		<figcaption>

			<p>Pellentesque habitant morbi tristique senectus et netus et
				malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
				vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
				amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
				placerat eleifend leo.</p>
			<a href="https://maps.app.goo.gl/q4zEeWGqKzo2NNYQA" class="button">More
				Info</a>

		</figcaption>
	</figure>
	<figure class="image-block">
		<h1>Forum Mall</h1>
		<img
			src="https://www.holidify.com/images/cmsuploads/compressed/13757970038267151373797861243985109056901959o_20210128172233.jpg"
			alt="" />
		<figcaption>

			<p>Pellentesque habitant morbi tristique senectus et netus et
				malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
				vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
				amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
				placerat eleifend leo.</p>
			<a href="https://maps.app.goo.gl/ZMAwmL8txUo8jKs26" class="button">More
				Info</a>

		</figcaption>
	</figure>
</body>
</html>
