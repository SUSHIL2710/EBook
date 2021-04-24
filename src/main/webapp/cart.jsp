<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg">
	<jsp:include page="header.jsp"></jsp:include>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/demo" user="root" password=""
		var="con" />

	<!-- Display only particular book -->
	<!-- Take bookid from last page books.jsp using ${param.bookid} -->
	<sql:query var="rs" dataSource="${con}">
		select * from cartitems where username=?
		<sql:param>${u.username}</sql:param>
	</sql:query>


	<c:forEach items="${rs.rows}" var="cartdetails">
		<sql:query var="rs2" dataSource="${con}">
		select * from books where bookid=?
		<sql:param>${cartdetails.bookid}</sql:param>
		</sql:query>

		<div class="container">
			<h3 class="mt-3">Your Cart Details</h3>
			<div class="row">
				<c:forEach items="${rs2.rows}" var="row">
					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mt-5 mb-5 p-5">
						<a href="book.jsp?bookid=${row.bookid}"><img
							src="ImageServlet?id=${row.bookid}" class="col-lg-12" /></a>
					</div>
					<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12 mt-5 mb-5 p-5">
						<h3 class="col-lg-12">${row.bookname}</h3>
						<h5 class="col-lg-12">${row.author}</h5>
						<h5 class="col-lg-12">Rs. ${row.price}</h5>
						<h5 class="col-lg-12">Total Price:
							${row.price*cartdetails.quantity}</h5>

						<form action="UpdateCartServlet" method="post">

							<input type="text" name="bookid" value="${row.bookid}" hidden />
							Quantity: <input type="number" name="qty"
								value="${cartdetails.quantity}" /> 
								<br>
								<br>
								<input type="submit" class="btn btn-success" value="Update Cart">
						</form>
					
						<!-- Display Buy button only if price is greater than zero -->
						<!-- Otherwise display read button because book is free -->
						<c:if test="${row.price>0}">
							<a href="" class="btn btn-primary">Buy</a>
						</c:if>
						<br>
						<!-- To read book add valid google drive pdf link in database -->
						<!-- Either while adding new book in the table or update the existing link -->
						<c:if test="${row.price<=0}">
							<a href="${row.link}" target="_blank"
								class="btn btn-secondary">Read</a>
						</c:if>
						<br>
						<!-- Url Rewriting Technique -->
						<c:if test="${u.role=='admin'}">
							<a href="DeleteServlet?bookid=${row.bookid}"
								class="btn btn-danger">Delete</a>
							<a href="edit.jsp?bookid=${row.bookid}"
								class="btn btn-warning">Edit</a>
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
	<jsp:include page="components/footer.jsp"></jsp:include>

</body>
</html>