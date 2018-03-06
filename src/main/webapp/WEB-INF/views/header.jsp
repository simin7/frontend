<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BDazzled</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- <link rel="stylesheet" href="resources/css/font-awesome.min.css"> -->
<!-- <link rel="stylesheet"
	href="/resources/css/Footer-with-social-icons.css"> -->


<!-- your stylesheet with modifications -->
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
<link href="resources/css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link href="https://cdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>


</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#collapse-example"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>

		<div class="navbar-header">
			<c:url value="/resources/images/4.png" var="url5"></c:url>
			<a class="navbar-brand">BDazzled</a>
			<c:url value="/home" var="url1"></c:url>
			<a class="navbar-brand" href="${url1 }"><img
				src="${url5 }" height="40px" width="40px"></a>
		</div>
		<div class="collapse navbar-collapse" id="collapse-example">
			<ul class="nav navbar-nav">
				<c:url value="/home" var="url1"></c:url>
				<li class="active"><a href="${url1 }">Home<span
						class="sr-only">You are in home page link</span></a></li>
  
				<c:url value="/aboutus" var="url2"></c:url>
				<li><a href="${url2 }">About Us</a></li>

				<!-- http://localhost:8080/Project_Frontend/getproductform -->

				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<c:url value="/admingetproductform" var="url3"></c:url>
						<li><a href="${url3 }">Add Product</a>
					</security:authorize>
				</c:if>
				</li>

				<c:url value="/allproductgetallproducts" var="url4"></c:url>
				<li><a href="${url4 }">Browse All Products</a></li>

				<li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown">Select by Category<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><c:forEach items="${categories }" var="c">
								<c:url
									value="/all/product/searchbycategory?searchCondition=${c.categoryName }"
									var="url"></c:url>
								<a href="${url }">${c.categoryName }</a>
							</c:forEach> <c:url value="/all/product/searchbycategory?searchCondition=All"
								var="url1">
							</c:url> <a href="${url1 }">All</a></li>
					</ul></li>

				<li><c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<a>Welcome ${pageContext.request.userPrincipal.name }</a>
					</c:if></li>

				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<c:url value="/allregistrationform" var="url5"></c:url>
					<li><a href="${url5 }">Register</a></li>
					<c:url value="/login" var="url6"></c:url>
					<li><a href="${url6 }">Login</a></li>
				</c:if>

				<li><security:authorize access="hasRole('ROLE_USER')">
						<li><c:url value="/cartgetcart" var="urlCart"></c:url> <a
							href="${urlCart }">Cart</a></li>
					</security:authorize></li>
					
				<c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="${logoutUrl }">Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>