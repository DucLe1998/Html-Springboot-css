<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<form method="POST" action="/Assignment_Java4_SOF3011/admin/users/store">
	<div class="main_slider"
		style="background-image:url(${ pageContext.request.contextPath }/images/background4.jpg">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider" style="margin-top: 60px">
						<div class="card mb-3" style="max-width: 750px; margin: 0 auto;">
							<div class="row g-0">
								<div class="card-body" style="margin: 0 auto">
									<h2 class="card-title text-center text-success">Account
										Manager</h2>
									<div class="form-box">
										<div class="row">
											<div class="col-2"></div>
											<div class="col-8">
												<div class="row"
													style="padding-top: 20px; padding-bottom: 8px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-person-circle"></i> Username</label>
													</div>
													<div class="col-7">
														<input autocomplete="off" class="col-12" type="text"
															name="hoTen" style="font-size: 16px; padding: 5px;"
															required="required" />
													</div>
												</div>


												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-geo-alt"></i> Address</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="text" name="diaChi"
															style="font-size: 16px; padding: 5px" required="required" />
													</div>
												</div>

												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-telephone"></i> Phone number</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="text" name="sdt"
															style="font-size: 16px; padding: 5px" required="required" />
													</div>
												</div>

												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px;"><i
															class="bi bi-envelope"></i> Email</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="email" name="email"
															style="font-size: 16px; padding: 5px" required="required" />
													</div>
												</div>

												<div class="row" style="padding: 8px 0px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px;"> <i
															class="bi bi-key"></i> Password
														</label>
													</div>
													<div class="col-7">
														<input class="col-12" type="password" name="password"
															style="font-size: 16px; padding: 5px" required="required"
															autocomplete="off" />
													</div>
												</div>

												<div class="row"
													style="padding-top: 8px; padding-bottom: 8px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px"><i
															class="bi bi-gender-ambiguous" style="font-size: 18px;"></i>
															Gender</label>
													</div>
													<div class="col-7" style="padding-top: 6px">
														<input type="radio" name="gioiTinh" value="1" /> <label
															style="font-size: 16px; padding-right: 20px">Male</label>
														<input type="radio" name="gioiTinh" value="0" /> <label
															style="font-size: 16px;">Female</label>
													</div>
												</div>

												<div class="row"
													style="padding-top: 0px; padding-bottom: 25px">
													<div class="col-5">
														<label class="text-success"
															style="font-size: 16px; padding-top: 6px"><i
															class="bi bi-question-circle text-success"></i> Role</label>
													</div>
													<div class="col-7" style="padding-top: 6px">
														<input type="radio" name="role" value="0" /> <label
															style="font-size: 16px; padding-right: 20px">User</label>
														<input type="radio" name="role" value="1" /> <label
															style="font-size: 16px;">Admin</label>
													</div>
												</div>
											</div>
											<div class="col-2"></div>
										</div>
									</div>
									<div class="text-center" style="padding-bottom: 10px">
										<button class="btn btn-outline-success">Create</button>
										<!-- <button class="btn btn-outline-primary">Update</button>
										<button class="btn btn-outline-danger">Delete</button>  -->
										<a href="/Assignment_Java4_SOF3011/admin/users/index"
											class="btn btn-outline-dark">Clear</a>
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

<c:if test="${ empty ds }">
	<p class="alert alert-warning">Không có bản ghi</p>
</c:if>

<c:if test="${ !empty sessionScope.error }">
	<div class="alert alert-danger">${ sessionScope.error }</div>

	<c:remove var="error" scope="session" />
</c:if>

<c:if test="${ !empty sessionScope.message }">
	<div class="alert alert-success">${ sessionScope.message }</div>

	<c:remove var="message" scope="session" />
</c:if>

<c:if test="${ !empty ds }">
	<div class="row">
		<h2 class="col-12 btn btn-outline-info text-center"
			style="margin-top: 8px; font-size: 40px">LIST USER</h2>
	</div>

	<table class="table">
		<thead class="table-primary">
			<th>Username</th>
			<th>Address</th>
			<th>Phone number</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Role</th>
			<th colspan="2">Actions</th>
		</thead>
		<tbody>
			<c:forEach var="obj" items="${ ds }">
				<tr>
					<td>${ obj.hoTen }</td>
					<td>${ obj.diaChi }</td>
					<td>${ obj.sdt }</td>
					<td>${ obj.email }</td>
					<td><c:choose>
							<c:when test="${ obj.gioiTinh == 1 }">Nam</c:when>
							<c:when test="${ obj.gioiTinh == 0 }">Nữ</c:when>
							<c:otherwise> - </c:otherwise>
						</c:choose></td>
					<td><c:choose>
							<c:when test="${ obj.role == 1 }">Admin</c:when>
							<c:when test="${ obj.role == 0 }">User</c:when>
							<c:otherwise> - </c:otherwise>
						</c:choose></td>
					<td><a class="btn btn-primary"
						href="/Assignment_Java4_SOF3011/admin/users/edit?id=${ obj.id }">
							Update</a></td>
					<td><a class="btn btn-danger" id=${ obj.id }
						href="/Assignment_Java4_SOF3011/admin/users/edit?id=${ obj.id }"
						data-bs-toggle="modal" data-bs-target="#staticBackdrop${ obj.id }">Delete</a>
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop${ obj.id }"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="modal-title" id="staticBackdropLabel">
											<span class="text-warning">Warning: </span>Are u sure?
										</h3>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" style="font-size: 16px">
										<div class="row">
											<img
												src="${ pageContext.request.contextPath }/images/ays.gif"
												class="img-fluid rounded-start pb-3" alt="">
										</div>
										Are you sure you want to delete this user?
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-dark"
											data-bs-dismiss="modal">hmmm...No</button>
										<a type="button" class="btn btn-outline-primary"
											href="/Assignment_Java4_SOF3011/admin/users/delete?id=${ obj.id }">Yeah
											sure</a>
									</div>
								</div>
							</div>
						</div></td>

				</tr>

			</c:forEach>
		</tbody>
	</table>
</c:if>


