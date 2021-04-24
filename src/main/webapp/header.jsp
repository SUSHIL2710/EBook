<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="components/common_css_js.jsp"></jsp:include>
</head>
<body>
<div
		class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 bg border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal">Books For All</h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark font-weight-bold" href="#">About</a> 
			<a class="p-2 text-dark font-weight-bold" href="books.jsp">Products</a> 
			<a class="p-2 text-dark font-weight-bold" href="#">Contact</a> <a
				class="p-2 text-dark font-weight-bold" href="cart.jsp">Cart</a>
		</nav>
		<!--Expression Language (EL) -->
		<c:if test="${u.username==null}">
			<a class="btn btn-outline-warning font-weight-bold" href="login.jsp">Login</a>&nbsp;&nbsp;
		<a class="btn btn-outline-warning font-weight-bold"
				href="register.jsp">Register</a>
		</c:if>
		<c:if test="${u.role=='admin'}">
			<a class="p-2 text-dark font-weight-bold" href="addbook.jsp">Add Book</a>
			<a class="p-2 text-dark font-weight-bold" href="index.jsp">Logout</a>
		</c:if>
	</div>
</body>
</html>