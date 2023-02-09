<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<form method="POST"
	action="/Assignment_Java4_SOF3011/admin/users/update?id=${ user.id }">
	<div class="main_slider"
		style="background-image:url(${ pageContext.request.contextPath }/images/background3.jpg">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider" style="margin-top: 60px">
						<div class="card mb-3" style="max-width: 750px; margin: 0 auto;">
							<div class="row g-0">
								<div class="card-body" style="margin: 0 auto">
									<h2 class="card-title text-center text-success">Account Manager</h2>
									<div class="form-box">
										<div class="row">
											<div class="col-2"></div>
											<div class="col-8">
												<div class="row"
													style="padding-top: 20px; padding-bottom: 8px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-person-circle"></i> Username</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="text" name="hoTen" value="${ user.hoTen }" 
															style="font-size: 16px; padding: 5px;" />
													</div>
												</div>


												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-geo-alt"></i> Address</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="text" name="diaChi"  value="${ user.diaChi }"
															style="font-size: 16px; padding: 5px" />
													</div>
												</div>

												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-telephone"></i> Phone number</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="text" name="sdt" value="${ user.sdt }" 
															style="font-size: 16px; padding: 5px" />
													</div>
												</div>

												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-envelope"></i> Email</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="email" name="email" value="${ user.email }"
															style="font-size: 16px; padding: 5px" />
													</div>
												</div>
												
												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px;">
														<i class="bi bi-key"></i> Password</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="password" name="password"  value="${ user.password }"
															style="font-size: 16px; padding: 5px" />
													</div>
												</div>

												<div class="row"
													style="padding-top: 8px; padding-bottom: 8px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px"><i
															class="bi bi-gender-ambiguous" style="font-size: 18px;"></i>
															Gender</label>
													</div>
													<div class="col-7" style="padding-top: 6px">
														<input type="radio" name="gioiTinh" value="1" ${ user.gioiTinh == 1 ? "checked" : "" }/> 
														<label style="font-size: 16px; padding-right: 20px">Male</label>
														<input type="radio" name="gioiTinh" value="0" ${ user.gioiTinh == 0 ? "checked" : "" }/>
														<label style="font-size: 16px;">Female</label>
													</div>
												</div>
												
												<div class="row"
													style="padding-top: 0px; padding-bottom: 25px">
													<div class="col-5">
														<label class="text-success" style="font-size: 16px; padding-top: 6px"><i
															class="bi bi-question-circle text-success"></i>
															Role</label>
													</div>
													<div class="col-7" style="padding-top: 6px">
														<input type="radio" name="role" value="0" ${ user.role == 0 ? "checked" : "" }/>
														<label style="font-size: 16px; padding-right: 20px">User</label>
														<input type="radio" name="role" value="1" ${ user.role == 1 ? "checked" : "" }/> 
														<label style="font-size: 16px;">Admin</label>										
													</div>
												</div>
											</div>
											<div class="col-2"></div>
										</div>
									</div>
									<div class="text-center" style="padding-bottom: 20px">
										<!-- <button class="btn btn-outline-success">Create</button> -->
										<button class="btn btn-outline-primary">Update</button>
										<!-- <button class="btn btn-outline-danger">Delete</button>
										<button class="btn btn-outline-dark">Clear</button> -->
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
