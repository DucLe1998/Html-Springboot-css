<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Header -->

<header class="header trans_300">

	<!-- Top Navigation -->

	<div class="top_nav">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="top_nav_left">free shipping on all u.s orders
						over $50</div>
				</div>
				<div class="col-md-6 text-end m-0 p-0">
					<div class="top_nav_right">
						<ul class="top_nav_menu">

							<!-- Currency / Language / My Account -->

							<li class="currency"><a href="#"> usd <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="currency_selection m-0 p-0">
									<li><a href="#">cad</a></li>
									<li><a href="#">aud</a></li>
									<li><a href="#">eur</a></li>
									<li><a href="#">gbp</a></li>
								</ul></li>
							<li class="language"><a href="#"> English <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="language_selection m-0 p-0">
									<li><a href="#">French</a></li>
									<li><a href="#">Italian</a></li>
									<li><a href="#">German</a></li>
									<li><a href="#">Spanish</a></li>
								</ul></li>
							<li class="account">
								<c:if test="${ empty user }">
									<a style="color: white;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
										My Account <i class="fa fa-angle-down"></i>
									</a>
								</c:if> 
								<c:if test="${ !empty user }">
									<a style="color: white;" href="/Assignment_Java4_SOF3011/infor">Avt ${ user.hoTen }<i
										class="fa fa-angle-down"></i>
									</a>
								</c:if>

								<ul class="account_selection m-0 p-0">
									<li><a href="/Assignment_Java4_SOF3011/login"><i
											class="bi bi-box-arrow-in-right"></i>Sign In</a></li>
									<li><a href="/Assignment_Java4_SOF3011/logout"><i
											class="bi bi-box-arrow-left"></i>Sign out</a></li>
									<li><a href="/Assignment_Java4_SOF3011/register"><i
											class="bi bi-person-plus"></i>Register</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Main Navigation -->

	<div class="main_nav_container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-right">
					<div class="logo_container">
						<a href="#">colo<span>shop</span></a>
					</div>
					<nav class="navbar">
						<ul class="navbar_menu">
							<li><a href="/Assignment_Java4_SOF3011/layout/index">home</a></li>
							<li><a href="#">shop</a></li>
							<li><a
								href="/Assignment_Java4_SOF3011/admin/categories/index">category</a></li>
							<li><a href="/Assignment_Java4_SOF3011/admin/products/index">product</a></li>
							<li><a href="/Assignment_Java4_SOF3011/admin/users/index">user</a></li>
							<li><a href="#">contact</a></li>

						</ul>
						<ul class="navbar_user">
							<li><a href="#"><i class="fa fa-search"
									aria-hidden="true"></i></a></li>
							<c:if test="${ empty user }">
									<li><a data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i
									class="fa fa-user" aria-hidden="true"></i></a></li>
							</c:if> 
							<c:if test="${ !empty user }">
									<li><a href="/Assignment_Java4_SOF3011/infor"><i
									class="fa fa-user" aria-hidden="true"></i></a></li>
							</c:if>
							
							<li class="checkout"><a href="#"> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i> <span
									id="checkout_items" class="checkout_items">2</span>
							</a></li>
						</ul>
						<div class="hamburger_container">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>

</header>

<div class="fs_menu_overlay"></div>
<div class="hamburger_menu">
	<div class="hamburger_close">
		<i class="fa fa-times" aria-hidden="true"></i>
	</div>
	<div class="hamburger_menu_content text-right">
		<ul class="menu_top_nav">
			<li class="menu_item has-children"><a href="#"> usd <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="#">cad</a></li>
					<li><a href="#">aud</a></li>
					<li><a href="#">eur</a></li>
					<li><a href="#">gbp</a></li>
				</ul></li>
			<li class="menu_item has-children"><a href="#"> English <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="#">French</a></li>
					<li><a href="#">Italian</a></li>
					<li><a href="#">German</a></li>
					<li><a href="#">Spanish</a></li>
				</ul></li>
			<li class="menu_item has-children"><a href="#"> My Account <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="menu_selection">
					<li><a href="#"><i class="fa fa-sign-in"
							aria-hidden="true"></i>Sign In</a></li>
					<li><a href="#"><i class="fa fa-user-plus"
							aria-hidden="true"></i>Register</a></li>
				</ul></li>
			<li class="menu_item"><a href="#">home</a></li>
			<li class="menu_item"><a href="#">shop</a></li>
			<li class="menu_item"><a href="#">promotion</a></li>
			<li class="menu_item"><a href="#">pages</a></li>
			<li class="menu_item"><a href="#">blog</a></li>
			<li class="menu_item"><a href="#">contact</a></li>
		</ul>
	</div>
</div>

<c:if test="${ empty user }">
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="staticBackdropLabel"><span class="text-warning">Warning: </span>Not logged in!</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" style="font-size: 16px">
					<div class="row">
						<img src="${ pageContext.request.contextPath }/images/ohno.jpg" class="img-fluid rounded-start pb-3" alt="">
					</div>
					Please login account to use this
					function!</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-dark"
						data-bs-dismiss="modal">Close</button>
					<a type="button" class="btn btn-outline-primary" href="/Assignment_Java4_SOF3011/login">Login now</a>
				</div>
			</div>
		</div>
	</div>
</c:if>