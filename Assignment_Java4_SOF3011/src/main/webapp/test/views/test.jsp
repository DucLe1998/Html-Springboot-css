<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16301</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/test/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	
<%-- <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/styles/bootstrap4/bootstrap.min.css"> --%>
<style type="text/css">
	a {
		text-decoration: none;
		padding: 0px 10px 2px 10px;
	}

	#afocus:focus {
		color: red;
	}

</style>
</head>
<body>

	<!-- body -->
	<div class="row">
		<div class="col-3">
			<div class="flex-shrink-0 p-3 bg-light">
				<a href="/"
					class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
					<svg class="bi me-2" width="30" height="24"></svg> <span class="fs-5 fw-semibold">Collapsible</span>
				</a>
				<ul class="list-unstyled ps-0">
					<li class="mb-1">
						
							<button class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#home-collapse"
							aria-expanded="false">Home</button>
<!-- 						<div class="collapse" id="home-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="link-dark rounded" id="test">Overview</a></li>
								<li><a href="#" class="link-dark rounded">Updates</a></li>
								<li><a href="#" class="link-dark rounded">Reports</a></li>
							</ul>
						</div> -->					
					</li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
							aria-expanded="false">Shirt <i class="bi bi-chevron-down"></i></button>
						<div class="collapse" id="dashboard-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">Overview</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#orders-collapse"
							aria-expanded="false">Trousers <i class="bi bi-chevron-down"></i></button>
						<div class="collapse" id="orders-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">New</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#account-collapse"
							aria-expanded="false">Account</button>
						<div class="collapse" id="account-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded">New...</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded">Profile</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded">Settings</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded">Sign out</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-9">
			<p>Category show in here</p>
		</div>
	</div>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Launch demo modal</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<!-- end body -->
	<script
		src="${ pageContext.request.contextPath }/test/js/jquery.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/test/js/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/test/js/bootstrap.min.js"></script>
</body>
</html>