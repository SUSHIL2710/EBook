<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<section class="bg">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mt-5 mb-5">
					<img alt="register" src="img/Register.png" class="img-fluid img-responsive">
				</div>
				<div class="col-md-6 mt-5 mb-5">
					<div class="card">
						<div class="card-body">
							<form action="LoginServlet" method="post">
						<div class="form-group">
							<label for="name" class="font-weight-bold">User Name</label> <input
								type="text" class="form-control" id="name" name="username"
								aria-describedby="emailHelp" placeholder="Enter username">
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your username with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="password" class="font-weight-bold">Password</label> <input
								type="password" class="form-control" id="password" name="password"
								placeholder="Password">
						</div>
						<div class="container text-center mb-2">
						<a href="register.jsp">New here? Register first</a>
						</div>
						<div class="container text-center">
						<button type="submit" class="btn btn-primary border-0">Submit</button>
						<button type="reset" class="btn btn-warning border-0">Reset</button>
						</div>
						<div class="container text-right mt-4">
						<a href="collectemail.jsp">Forgot Password?</a>
						</div>
					</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>