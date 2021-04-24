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
			<div class="col-md-6 offset-md-3 mt-5 mb-5">
				<div class="card bg">
					<div class="card-header">
						<h2>OTP</h2>
					</div>
					<div class="card-body">
						<form action='CheckOTPServlet' method='post'>
							<div class="form-group">
								<label for="password" class="font-weight-bold">Enter OTP</label>
								<input type="text" class="form-control" id="password" name="otp"
									placeholder="Enter OTP">
							</div>
							<div class="form-group container text-center">
								<button type="submit" class="btn btn-primary border-0">Submit</button>
								<button type="reset" class="btn btn-warning border-0">Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>