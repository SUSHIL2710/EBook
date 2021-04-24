<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form - EBook</title>
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
							<form action="RegistrationServlet" method="post">
						<div class="form-group">
							<label for="username" class="font-weight-bold">User Name</label> <input
								type="text" class="form-control" id="username" name="username"
								aria-describedby="emailHelp" placeholder="Enter username">
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your username with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="email" class="font-weight-bold">Email address</label> <input
								type="email" class="form-control" id="email" name="email"
								aria-describedby="emailHelp" placeholder="Enter email">
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your email with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="password" class="font-weight-bold">Password</label> <input
								type="password" class="form-control" id="password" name="password"
								placeholder="Password">
						</div>
						<div class="form-group container text-center">
						<button type="submit" class="btn btn-primary border-0">Submit</button>
						<button type="reset" class="btn btn-warning border-0">Reset</button>
						</div>
						<div class="container text-right mt-3 mb-3">
							<a href="login.jsp">Already Registered? Login Here</a>
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