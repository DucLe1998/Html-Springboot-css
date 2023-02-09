<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Colo Shop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/bootstrap.min.css"> 

<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/sweetalert2.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<%-- <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/styles/bootstrap4/bootstrap.min.css"> --%>
<link href="${ pageContext.request.contextPath }/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/styles/responsive.css">
</head>
<body>

<div class="super_container">

	<!-- MENU -->
	<div class="row">
			<div class="col-12">
				<jsp:include page="${ menu }"></jsp:include>
			</div>
	</div>
	<!-- END MENU -->

	<!-- BODY -->
	<div class="row">
			<div class="col-12">
				<jsp:include page="${ view }"></jsp:include>
			</div>
	</div>
	<!-- END BODY -->
	
	<!-- Footer -->
	<div class="row">
		<hr>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav">
							<li><a href="#">Blog</a></li>
							<li><a href="#">FAQs</a></li>
							<li><a href="contact.html">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><a href="https://www.facebook.com/hoangdeptrai22102002/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="https://www.instagram.com/iamhoang2210"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container">
						<div class="cr">©2018 All Rights Reserverd. Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a> &amp; distributed by <a href="https://themewagon.com">ThemeWagon</a></div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</div>



	<script
		src="${ pageContext.request.contextPath }/test/js/jquery.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/test/js/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/test/js/bootstrap.min.js"></script>
	
 	<script src="${ pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${ pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath }/styles/bootstrap4/popper.js"></script>
	<script src="${ pageContext.request.contextPath }/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath }/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="${ pageContext.request.contextPath }/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="${ pageContext.request.contextPath }/plugins/easing/easing.js"></script>
	<script src="${ pageContext.request.contextPath }/js/custom.js"></script>

</body>
</html>