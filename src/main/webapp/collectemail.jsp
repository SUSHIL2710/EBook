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

	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action='SendOTPServlet' method='post'>
					<div class="form-group">
						<label for="email" class="font-weight-bold">Email address</label>
						<input type="email" class="form-control" id="email" name="email"
							aria-describedby="emailHelp" placeholder="Enter email"> <small
							id="emailHelp" class="form-text text-muted">We'll never
							share your email with anyone else.</small>
					</div>
					<div class="form-group container text-center">
						<button type="submit" class="btn btn-primary border-0">Send OTP</button>
						<button type="reset" class="btn btn-warning border-0">Reset</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>