<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change PAssword - EBook</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-6 offset-md-3 mt-5 mb-5">
				<div class="card">
					<div class="card-header bg"><h3>Change Password</h3></div>
					<div class="card-body">
						<form method="post" action="ChangePasswordServlet">
							<div class="form-group">
							<label for="password" class="font-weight-bold">Password</label> <input
								type="text" class="form-control" id="password" name="password"
								placeholder="Password">
						</div>
							<div class="form-group">
							<label for="password" class="font-weight-bold">Confirm Password</label> <input
								type="text" class="form-control" id="password" name="confirmpassword"
								placeholder="Password">
						</div>
							<div class="form-group container text-center">
						<button type="submit" class="btn btn-primary border-0">Change Password</button>
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