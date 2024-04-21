<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>navbar</title>
<style>/*Fonts from external source*/
@font-face {
	src:
		url(C:\Users\Home\AppData\Local\Temp\atom-118019-14536-1ea9572.rtm9ozuxr\league-spartan.zip\LeagueSpartan-Bold.otf);
	font-family: League Spartan;
}
/*Fonts from external source*/

/*Navigation Bar*/
.logo {
	position: absolute;
	 margin-top: 15px;
	font-size: 16px;
	margin-left: 13px;
}

.logo h1 {
	font-family: Segoe UI, Helvetica, calibri, serif;
	margin-top: 4px;
}





nav ul {
	display: block;
	float: right;
	overflow: hidden;
	margin: 7px 0;
	margin-right: 10px;
}

nav ul li {
	list-style-type: none;
	float: left;
	text-align: center;
	padding: 10px;
	font-family: 'Roboto', Helvetica, sans-serif;
	font-size: 17px;
}

nav ul li a {
	text-decoration: none;
	color: black;
}


}
</style>
</head>
<body>
	
		<div class="logo">
			<h1>ARTFOLIO</h1>
		</div>
		<nav>
			<ul>
				<li><a href="index.jsp"> HOME </a></li>
				<li><a href="gallery.jsp"> GALLERY </a></li>
				<li><a href="artwork.jsp"> ARTWORK </a></li>
				<li><a href="#contact"> CONTACT </a></li>
				<li><a href="login.jsp"> LOGIN </a></li>
				<li><a href="#"> SIGNOUT </a></li>
			</ul>

		</nav>
	
</body>
</html>