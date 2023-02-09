<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<form method="POST" action="/Assignment_Java4_SOF3011/login">
	<div class="main_slider p-0 m-0"
		style="background-image:url(${ pageContext.request.contextPath }/assets/images/backgrounds/login-bg.jpg)">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider" style="padding-top: 60px">
						<div class="card mb-3" style="max-width: 750px; margin: 0 auto">
							<div class="row g-0">
								<div class="col-md-5">
									<img
										src="${ pageContext.request.contextPath }/images/loginIMG.jpg"
										class="img-fluid rounded-start pt-5" alt="">
								</div>
								<div class="col-md-7">
									<div class="card-body">
										<h1 class="card-title">Sing In</h1>
										<div class="form-box">
											<div class="row" style="padding: 20px 0px">
												<div class="col-4">
													<label style="font-size: 18px; padding-top: 6px">Email</label>
												</div>
												<div class="col-8">
													<input type="email" name="email" style="font-size: 18px; padding: 5px" required="required"/>
												</div>	 
											</div>
											<div class="row" style="padding-bottom: 10px">
												<div class="col-4">
													<label style="font-size: 18px; padding-top: 6px">Password</label>
												</div> 
												<div class="col-8">
													<input type="password" name="password" style="font-size: 18px; padding: 5px" required="required"/>
												</div>	
											</div>
											<div style="padding-bottom: 10px; padding-right: 24px; text-align: right;">												
													<a style="font-size: 14px;">Forgot Password?</a>																							
											</div>
										</div>
										<div style="padding-bottom: 20px">
											<button class="btn btn-outline-dark">LOG IN	<i class="bi bi-arrow-right-circle-fill"></i></button>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<c:if test="${ empty user }">
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="staticBackdropLabel">Warning: Not logged in!</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
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