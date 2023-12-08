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
	url("https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@700&display=swap")
	;

:root {
	/* Colors */
	--brand-color: hsl(46, 100%, 50%);
	--black: hsl(0, 0%, 0%);
	--white: hsl(0, 0%, 100%);
	/* Fonts */
	--font-title: "Montserrat", sans-serif;
	--font-text: "Lato", sans-serif;
}

/* RESET */

/* Box sizing rules */
*, *::before, *::after {
	box-sizing: border-box;
}

/* Remove default margin */
body, h2, p {
	margin: 0;
}

/* GLOBAL STYLES */
body {
	display: grid;
	place-items: center;
	height: 100vh;
}

h2 {
	font-size: 2.25rem;
	font-family: var(--font-title);
	color: var(--white);
	line-height: 1.1;
}

p {
	font-family: var(--font-text);
	font-size: 1rem;
	line-height: 1.5;
	color: var(--white);
}

.flow>*+* {
	margin-top: var(--flow-space, 1em);
}

/* CARD COMPONENT */
.card {
	display: grid;
	place-items: center;
	width: 80vw;
	max-width: 21.875rem;
	height: 40rem;
	overflow: hidden;
	border-radius: 0.625rem;
	box-shadow: 0.25rem 0.25rem 0.5rem rgba(0, 0, 0, 0.25);
	width: calc(50% - 20px); /* Set width for each card */
	margin: 45px; /* Add margin for spacing between cards */
	margin-left: 150px;
}

.card>* {
	grid-column: 1/2;
	grid-row: 1/2;
}

.card__background {
	object-fit: cover;
	max-width: 100%;
	height: 100%;
}

.card__content {
	--flow-space: 0.9375rem;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-self: flex-end;
	height: 55%;
	padding: 12% 1.25rem 1.875rem;
	background: linear-gradient(180deg, hsla(0, 0%, 0%, 0) 0%,
		hsla(0, 0%, 0%, 0.3) 10%, hsl(0, 0%, 0%) 100%);
}

.card__content--container {
	--flow-space: 1.25rem;
}

.card__title {
	position: relative;
	width: fit-content;
	width: -moz-fit-content; /* Prefijo necesario para Firefox  */
}

.card__title::after {
	content: "";
	position: absolute;
	height: 0.3125rem;
	width: calc(100% + 1.25rem);
	bottom: calc(( 1.25rem - 0.5rem)* -1);
	left: -1.25rem;
	background-color: var(--brand-color);
}

.card__button {
	padding: 0.75em 1.6em;
	width: fit-content;
	width: -moz-fit-content; /* Prefijo necesario para Firefox  */
	font-variant: small-caps;
	font-weight: bold;
	border-radius: 0.45em;
	border: none;
	background-color: var(--brand-color);
	font-family: var(--font-title);
	font-size: 1.125rem;
	color: var(--black);
}

.card-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center; /* Align cards horizontally */
	align-items: flex-start; /* Align cards vertically */
}

.card__button:focus {
	outline: 2px solid black;
	outline-offset: -5px;
}

@media ( any-hover : hover) and (any-pointer: fine) {
	.card__content {
		transform: translateY(62%);
		transition: transform 500ms ease-out;
		transition-delay: 500ms;
	}
	.card__title::after {
		opacity: 0;
		transform: scaleX(0);
		transition: opacity 1000ms ease-in, transform 500ms ease-out;
		transition-delay: 500ms;
		transform-origin: right;
	}
	.card__background {
		transition: transform 500ms ease-in;
	}
	.card__content--container>:not(.card__title), .card__button {
		opacity: 0;
		transition: transform 500ms ease-out, opacity 500ms ease-out;
	}
	.card:hover, .card:focus-within {
		transform: scale(1.05);
		transition: transform 500ms ease-in;
	}
	.card:hover .card__content, .card:focus-within .card__content {
		transform: translateY(0);
		transition: transform 500ms ease-in;
	}
	.card:focus-within .card__content {
		transition-duration: 0ms;
	}
	.card:hover .card__background, .card:focus-within .card__background {
		transform: scale(1.3);
	}
	.card:hover .card__content--container>:not(.card__title), .card:hover .card__button,
		.card:focus-within .card__content--container>:not(.card__title), .card:focus-within .card__button
		{
		opacity: 1;
		transition: opacity 500ms ease-in;
		transition-delay: 1000ms;
	}
	.card:hover .card__title::after, .card:focus-within .card__title::after
		{
		opacity: 1;
		transform: scaleX(1);
		transform-origin: left;
		transition: opacity 500ms ease-in, transform 500ms ease-in;
		transition-delay: 500ms;
	}
}
</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
	<div class="card-container">
		<article class="card">
			<img class="card__background"
				src="https://static01.nyt.com/images/2020/08/25/business/25Amazon-India-01/merlin_175989213_eb0e728c-de14-4adf-8c0a-60c461c08a1f-mediumSquareAt3X.jpg"
				alt="Photo of Cartagena's cathedral at the background and some colonial style houses"
				width="1920" height="2193" />
			<div class="card__content | flow">
				<div class="card__content--container | flow">
					<h2 class="card__title">Amazon</h2>
					<p class="card__description">Amazon has a large presence in
						Hyderabad,India. It is one of Amazon's largest global development
						centers, with over 15,000 employees. Amazon has eight office
						spaces in Hyderabad, including its largest corporate building in
						the world, which is located in Gachibowli.</p>
				</div>
				<a href="https://www.amazon.jobs/en/locations/hyderabad-india"
					class="card__button" target="_blank">Get Details</a>
			</div>
		</article>
		<article class="card">
			<img class="card__background"
				src="https://content.jdmagicbox.com/comp/hyderabad/e8/040pxx40.xx40.140628185731.q8e8/catalogue/deloitte-tax-services-india-pvt-ltd-gachibowli-hyderabad-tax-consultants-nb8i3h8ugh.jpg?clr="
				alt="Photo of Cartagena's cathedral at the background and some colonial style houses"
				width="1920" height="2193" />
			<div class="card__content | flow">
				<div class="card__content--container | flow">
					<h2 class="card__title">Deloitte</h2>
					<p class="card__description">Deloitte is a multinational
						professional services network headquartered in London.It is one of
						the Big Four accounting firms.Deloitte has a presence in
						Hyderabad.The office is at Krb Towers, Madhapur.It is one of the
						largest offices of Deloitte in India,with over 5,000 employees.</p>
				</div>
				<a
					href="https://www2.deloitte.com/in/en/footerlinks/office-locator/india-offices/hyderabad.html"
					class="card__button" target="_blank">Get Details</a>
			</div>
		</article>
		<article class="card">
			<img class="card__background"
				src="https://cdn.telanganatoday.com/wp-content/uploads/2021/09/JP-Morgan-Exterior-View..jpg"
				alt="Photo of Cartagena's cathedral at the background and some colonial style houses"
				width="1920" height="2193" />
			<div class="card__content | flow">
				<div class="card__content--container | flow">
					<h2 class="card__title">JP Morgan</h2>
					<p class="card__description">JPMorgan Chase & Co. is a
						well-known multinational investment bank and financial services
						company. It's one of the largest and most prominent banks in the
						world. It offers a range of services including banking, asset
						management, commercial banking, retail banking, and more.</p>
				</div>
				<a
					href="https://careers.jpmorgan.com/us/en/about-us/locations/hyderabad"
					class="card__button" target="_blank">Get Details</a>
			</div>
		</article>
		<article class="card">
			<img class="card__background"
				src="https://static.toiimg.com/thumb/msid-87713785,width-400,resizemode-4/87713785.jpg"
				alt="Photo of Cartagena's cathedral at the background and some colonial style houses"
				width="1920" height="2193" />
			<div class="card__content | flow">
				<div class="card__content--container | flow">
					<h2 class="card__title">IBM</h2>
					<p class="card__description">The campus is home to a variety of
						IBM businesses, including software development, consulting, and
						research.The campus is spread over 100 acres and houses over
						10,000 employees. It is one of the largest IBM campuses in the
						world. It is located at Orion B7 Divyasree Orion Rd.</p>
				</div>
				<a href="https://www.ibm.com/in-en" class="card__button"
					target="_blank">Get Details</a>
			</div>
		</article>
	</div>
</body>
</html>
