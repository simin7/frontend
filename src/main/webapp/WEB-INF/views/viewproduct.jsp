<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<b>Details About the Product</b>
<table>
	<tr>
		<c:url value="/resources/images/${product.id }.png" var="imageUrl"></c:url>
		<td><img src="${imageUrl }" height="350" width="350"></td>
	</tr>
	<tr>
		<td><h3>
				<b>Product Name:</b>
			</h3></td>
		<td><h4>${product.productName }</h4></td>
	</tr>
	<tr>
		<td><h3>
				<b>Price:</b>
			</h3></td>
		<td><h4>${product.price }</h4></td>
	</tr>
	<tr>
		<td><h3>
				<b>Description:</b>
			</h3></td>
		<td><h4>${product.description }</h4></td>
	</tr>
	<tr>
		<td><h3>
				<b>Quantity:</b>
			</h3></td>
		<td><h4>${product.quantity }</h4></td>
	</tr>
</table>

<c:if test="${product.quantity==0 }">Out of Stock</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/cart/addtocart/${product.id }" var="url"></c:url>
<form action="${url }">
	<h3><b>Enter Units</b></h3><input type="text" name="units"><br>

	<button type="submit" class="btn btn-info btn-lg">
		<span class="glyphicon glyphicon-shopping-cart"></span>
	</button>
</form>
</c:if>

<c:url value="/all/product/getallproducts" var="url1"></c:url>
<h2>
	<a href="${url1 }">Back to Product List</a>
</h2>
<br>
<br>
<%@ include file="footer.jsp"%>