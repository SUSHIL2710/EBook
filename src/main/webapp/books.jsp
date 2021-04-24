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
<body>
<jsp:include page="header.jsp"></jsp:include>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/demo" user="root" password=""
		var="con" />

<c:if test="${param.bookname==null && param.sort==null}">
		<sql:query var="rs" dataSource="${con}">
		select * from books where status='A'
	</sql:query>
</c:if>


<div class="container-fluid bg">
		<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 mt-5">
					<a href="book.jsp?bookid=${row.bookid}"><img
						src="ImageServlet?id=${row.bookid}" style="height: 300px"
						class="col-lg-12" /></a>
					<h3 class="col-lg-12">${row.bookname}</h3>
					<h4 class="col-lg-12">Rs. ${row.price}</h4>
					<button class="btn btn-primary border-0">Add To Cart</button>
					<button class="btn btn-warning border-0">Buy</button>
				</div>
			</c:forEach>
		</div>
	</div>

<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>