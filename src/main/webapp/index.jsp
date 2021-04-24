<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook - Home Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- ============Carousel============== -->
<div class="jumbotron">
	<br>
	<br>
	<br>
	<div class="container">
  <div class="row">
  	<div class="col-md-8">
  		<h1 class="display-4 font-weight-bold">Books For All</h1>
  <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
  <a class="btn btn-warning btn-lg" href="login.jsp" role="button">Buy Now</a>
  	</div>
  	<div class="col-md-4">
  		<img alt="banner" src="img/banner.png">
  	</div>
  	</div>
  </div>
  <br>
  <br>
  <br>
</div>
<!-- ============Carousel============== -->
<!-- =============================================---->
<!-- ============Feature============= -->
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <img alt="24x7" src="img/24x7.png" class="bd-placeholder-img rounded-circle" height="50%" width="50%">
        <h2>24x7 Support</h2>
        <p></p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img alt="24x7" src="img/return.jpg" class="bd-placeholder-img rounded-circle" height="50%" width="50%">
        <h2>Easy Return</h2>
        <p></p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img alt="24x7" src="img/delivery.png" class="bd-placeholder-img rounded-circle" height="50%" width="50%">
        <h2>Free Delivery</h2>
        <p></p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">Itll blow your mind.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
        <img alt="feature1" src="img/book1.jfif" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" height="300" width="300">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, its that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img alt="feature1" src="img/book2.jfif" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" height="300" width="300">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
        <img alt="feature1" src="img/book3.jfif" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" height="300" width="300">
        </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->
    </div>

<!-- ============Feature============= -->
<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>