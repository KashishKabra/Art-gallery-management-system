import com.mycompany.connection.DbCon;
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Art Gallery</title>
<%-- <%@include file="includes/head.jsp" %>
</head>
<body>
<h1>hello</h1>


 --%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">

<script src="https://kit.fontawesome.com/332a215f17.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: 0;
}

input, textarea, button, select, img, span, a {
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	outline: 0;
}

/*Fonts from external source*/
@font-face {
	src:
		url(C:\Users\Home\AppData\Local\Temp\atom-118019-14536-1ea9572.rtm9ozuxr\league-spartan.zip\LeagueSpartan-Bold.otf);
	font-family: League Spartan;
}
/*Fonts from external source*/
#menu {
	position: absolute;
	right: 20px;
	top: 17px;
	cursor: pointer;
	display: none;
}

#close {
	position: absolute;
	top: 17px;
	right: 20px;
	cursor: pointer;
	display: none;
}
/*Hero Image*/
header {
	width: 100vw;
	height: 95vh;
	background: linear-gradient(rgba(0, 0, 0, 0.55), rgba(0, 0, 0, 0.55)),
		url('https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cc1f82f635206f99e3132d9ebd24db6c&auto=format&fit=crop&w=1951&q=80');
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.header-text {
	width: 500px;
	text-align: center;
}

header h1 {
	margin-bottom: 10px;
	font-family: League Spartan, sans-serif;
	font-weight: 500;
	font-size: 45px;
	color: white;
}

#photography {
	font-size: 60px;
	letter-spacing: 0.5px;
}

header p {
	margin-bottom: 20px;
	font-family: 'Open Sans', Helvetica, sans-serif;
	color: white;
	font-size: 18px;
}

header button {
	border: 2px solid white;
	color: white;
	font-family: 'Roboto', Segoe UI, calibri, Helvetica, serif;
	padding: 10px;
	font-size: 18px;
	width: 160px;
	border-radius: 500px;
	cursor: pointer;
	background-color: transparent;
	transition: all 0.2s ease-in-out;
}

header button:hover, button:active {
	background-color: white;
	color: black;
}

@media screen and (max-width: 676px) {
	.header-text {
		width: 95%;
		text-align: center;
	}
}

@media screen and (max-width: 601px) {
	#photography {
		font-size: 45px;
	}
	header h1 {
		font-size: 30px;
	}
	header p {
		font-size: 15px;
		width: 85%;
		display: block;
		margin: auto;
		margin-bottom: 20px;
	}
	header button {
		font-size: 16px;
		width: 140px;
	}
}

@media screen and (max-width: 460px) {
	#photography {
		font-size: 35px;
	}
	header h1 {
		font-size: 28px;
	}
}

#search5back {
	margin: 0 auto;
}

#searchbox5 {
	width: 200px;
	margin: 0 auto;
	padding: 15px 0 30px;
}

#search5 {
	background:
		url(data:image/png;base64,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)
		no-repeat 10px 6px #444;
	border: 0 none;
	font: bold 12px Arial, Helvetica, Sans-serif;
	color: #777;
	width: 150px;
	padding: 6px 15px 6px 35px;
	border-radius: 20px;
	text-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px
		rgba(0, 0, 0, 0.2) inset;
	-webkit-transition: all 0.7s ease 0s;
}

#search5:focus {
	width: 200px;
	outline: 0;
}

/*Hero Image*/
</style>
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<% out.print(DbCon.provideConnection()); %>



	<span id="close"> <img style="width: 25px;"
		src="http://www.pvhc.net/img5/onbbqnqzkjrtvirmiqnp.png" alt="CLOSE">
	</span>
	<span id="menu"> <img style="width: 25px;"
		src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR11WXR-a18XfNZknL7S4lu0lLyC4aWZPY4sLd4wNHUNv9So2gd"
		alt="MENU">
	</span>


	<header>
		<div class="header-text">
			<h1>
				WE LOVE <br> <span id="photography"> ARTWORK. </span>
			</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco.</p>
			<button>Learn More</button>
		</div>
	</header>
	
</body>
</html>