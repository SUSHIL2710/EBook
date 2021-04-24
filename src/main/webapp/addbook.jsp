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
			<div class="col-md-6 offset-md-3 mb-5 mt-5">
				<div class="card bg">
					<div class="card-header">
						<h3>Add Books</h3>
					</div>
					<div class="card-body">
						<form action='AddBookServlet' method='post'
							enctype="multipart/form-data">
							<div class="form-group">
								<label class="font-weight-bold">Enter Book Name</label> <input
									type="text" class="form-control" name="bookname"
									placeholder="Enter book name">
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Enter Author</label> <input
									type="text" class="form-control" name="author"
									placeholder="Enter author">
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Enter Price</label> <input
									type="text" class="form-control" name="price"
									placeholder="Enter book price">
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Enter Link</label> <input
									type="text" class="form-control" name="link"
									placeholder="Enter book link">
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Select Image</label> <input
									type="file" class="form-control" name="image"
									placeholder="Enter book image">
							</div>
							<div class="form-group container text-center">
								<button type="submit" class="btn btn-primary border-0">Add
									Book</button>
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