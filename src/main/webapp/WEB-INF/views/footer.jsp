<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa {
	padding: 10px;
	font-size: 20px;
	width: 30px;
	text-align: center;
	text-decoration: none;
	margin: 5px 2px;
	border-radius: 30%;
}

.fa:hover {
	opacity: 0.7;
}

.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-twitter {
	background: #55ACEE;
	color: white;
}

.fa-google {
	background: #dd4b39;
	color: white;
}

.fa-linkedin {
	background: #007bb5;
	color: white;
}

.fa-youtube {
	background: #bb0000;
	color: white;
}

.fa-instagram {
	background: #125688;
	color: white;
}

.fa-pinterest {
	background: #cb2027;
	color: white;
}

.fa-snapchat-ghost {
	background: #fffc00;
	color: white;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}

<
title>Insert title here </title> <meta charset ="utf-8"> <meta name
	="viewport" content ="width=device-width, initial-scale =1"> <link rel
	="stylesheet"
	href ="https: //maxcdn.bootstrapcdn.com /bootstrap/3.3.7 /css/bootstrap.min.css
	"> <link href ="https: //cdn.bootstrapcdn.com /font-awesome/4.7.0
	/css/font-awesome.min.css " rel ="stylesheet"> <script
	src ="https: //ajax.googleapis.com /ajax/libs/jquery/3.2.1 /jquery.min.js
	"> </script> <script
	src ="https: //maxcdn.bootstrapcdn.com /bootstrap/3.3.7 /js/bootstrap.min.js
	"> </script> <style>.bg-1 {
	background-color: #1abc9c;
	color: #ffffff;
}

.bg-2 {
	background-color: #474e5d;
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff;
	color: #555555;
}

.bg-4 {
	background-color: #2f2f2f;
	color: #fff;
}

.container-fluid {
	padding-top: 20px;
	padding-bottom: 20px;
}
</style>
</head>
<body>

	<div class="container-fluid bg-2 text-center">
		<h3>What is BDazzled about?</h3>
		<p></p>
		<c:url value="/aboutus" var="abt" />
		<a href="${abt }" class="btn btn-default btn-lg"> <span
			class="glyphicon glyphicon-search"></span> Search
		</a>
	</div>

	<div class="container-fluid bg-3 text-center">
		<h3>Where To Find Me?</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">

				<img src="./resources/images/6.jpg" class="img-responsive"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">

				<img src="./resources/images/7.png" class="img-responsive"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">

				<img src="./resources/images/8.jpg" class="img-responsive"
					style="width: 100%" alt="Image">
			</div>
		</div>
	</div>

	<footer class="container-fluid bg-4 text-center">
	<p>
		<a href="#" class="fa fa-facebook"></a> <a href="#"
			class="fa fa-twitter"></a> <a href="#" class="fa fa-google"></a> <a
			href="#" class="fa fa-linkedin"></a> <a href="#"
			class="fa fa-youtube"></a> <a href="#" class="fa fa-instagram"></a> <a
			href="#" class="fa fa-pinterest"></a> <a href="#"
			class="fa fa-snapchat-ghost"></a>
	</p>
	</footer>
</body>
</html>