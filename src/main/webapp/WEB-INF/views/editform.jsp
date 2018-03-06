
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/admin/product/editproduct" var="url"></c:url>
	<form:form action="${url }" modelAttribute="productObj"
		enctype="multipart/form-data">
		<div class="form-group">
			<form:hidden path="id" class="form-control" />
		</div>
		<div class="form-group">
			Product Name :
			<form:input path="productName" class="form-control"/>
			<br>
		</div>
		<div class="form-group">
			Product Description :
			<form:input path="description" class="form-control" />
			<br>
		</div>
		<div class="form-group">
			Price :
			<form:input path="price" class="form-control" />
			<br>
		</div>
		<div class="form-group">
			Quantity :
			<form:input path="quantity" class="form-control" />
			<br>
		</div>
		<div>
			Select Category
			<c:forEach items="${categories }" var="c">
				<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }
</c:forEach>
		</div>
		<div class="form-group">
			Upload an Image <input type="file" name="image">
		</div>
		<div class="form-group">
			<input type="submit" value="Edit Product" class="form-control">
		</div>
	</form:form>
</body>
<%@include file="footer.jsp"%>
</html>