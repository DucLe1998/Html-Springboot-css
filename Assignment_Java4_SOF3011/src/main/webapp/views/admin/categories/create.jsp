<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style type="text/css">
#afocus {
	font-size: 14px;
	text-decoration: none;
	padding: 0px 10px 2px 10px;
}

#afocus:focus {
	color: red;
}
</style>
<div class="row" style="margin-top: 150px">
	<!-- body -->
	<div class="row">
		<div class="col-3">
			<div class="flex-shrink-0 p-3" style="width: 270px;">
				<a href="/Assignment_Java4_SOF3011/admin/categories/index"
					class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
					<svg class="bi me-2" width="55" height="24"></svg> <span
					class="fs-5 fw-semibold">Category</span>
				</a>
				<ul class="list-unstyled ps-0">
					<li class="mb-1"><a
						href="/Assignment_Java4_SOF3011/layout/index">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#home-collapse"
								aria-expanded="false">Home</button>
					</a></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
							aria-expanded="false">
							Shirt <i class="bi bi-chevron-down"></i>
						</button>
						<div class="collapse" id="dashboard-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<c:forEach var="ao" items="${ shirt }">
									<li style="padding: 5px 0px; padding-left: 15px"><a
										href="#" class="link-dark rounded" id="afocus">${ ao.ten }</a></li>
								</c:forEach>
							</ul>
						</div>
					</li>

					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#orders-collapse"
							aria-expanded="false">
							Trousers <i class="bi bi-chevron-down"></i>
						</button>
						<div class="collapse" id="orders-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<c:forEach var="quan" items="${ trousers }">
									<li style="padding: 5px 0px; padding-left: 15px"><a
										href="#" class="link-dark rounded" id="afocus">${ quan.ten }</a></li>
								</c:forEach>
							</ul>
						</div>
					</li>
					<li class="mb-1"><a
						href="/Assignment_Java4_SOF3011/admin/categories/create">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#admin-collapse"
								aria-expanded="false">
								Admin</i>
							</button>
					</a></li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#account-collapse"
							aria-expanded="false">
							Account <i class="bi bi-chevron-down"></i>
						</button>
						<div class="collapse" id="account-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li style="padding: 5px 0px; padding-left: 15px"><a
									href="#" class="link-dark rounded" id="afocus">New...</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a
									href="#" class="link-dark rounded" id="afocus">Profile</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a
									href="#" class="link-dark rounded" id="afocus">Settings</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a
									href="#" class="link-dark rounded" id="afocus">Sign out</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-9">
			<form method="POST"
				action="/Assignment_Java4_SOF3011/admin/categories/store"
				style="margin-bottom: 1px">
				<div class="main_slider m-0 p-0"
					style="max-height: 380px; background-image:url(${ pageContext.request.contextPath }/images/background5.png">
					<div class="container fill_height">
						<div class="row align-items-center fill_height">
							<div class="col">
								<div class="main_slider p-0" style="margin-top: 55px;">
									<div class="card mb-3"
										style="max-width: 550px; margin: 0 auto;">
										<div class="row g-0">
											<div class="card-body" style="margin: 0 auto">
												<h2 class="card-title text-center text-info">Category</h2>
												<div class="form-box">
													<div class="row">
														<div class="col-2"></div>
														<div class="col-8">
															<div class="row"
																style="padding-top: 20px; padding-bottom: 8px">
																<div class="col-5">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 6px;">Name</label>
																</div>
																<div class="col-7">
																	<input autocomplete="off" class="col-12" type="text"
																		name="ten" style="font-size: 16px; padding: 5px;"
																		required="required" />
																</div>
															</div>

															<div class="row"
																style="padding-top: 0px; padding-bottom: 25px">
																<div class="col-5">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 6px">
																		Classify</label>
																</div>
																<div class="col-7" style="padding-top: 6px">
																	<input type="radio" name="loai" value="0" /> <label
																		style="font-size: 16px; padding-right: 20px">Shirt</label>
																	<input type="radio" name="loai" value="1" /> <label
																		style="font-size: 16px;">Trousers</label>
																</div>
															</div>
														</div>
														<div class="col-2"></div>
													</div>
												</div>
												<div class="text-center" style="padding-bottom: 15px">
													<button class="btn btn-outline-info">Create</button>
													<!-- <button class="btn btn-outline-primary">Update</button> -->
													<!-- <button class="btn btn-outline-danger">Delete</button> -->
													<a href="/Assignment_Java4_SOF3011/admin/categories/create"
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
			

		</div>
	</div>
</div>
				<c:if test="${ empty ds }">
					<p class="alert alert-warning">Kh??ng c?? b???n ghi</p>
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
					<table class="table">
						<thead class="table-info">
							<th>Id</th>
							<th>Name</th>
							<th>Classify</th>
							<th>Creator</th>
							<th colspan="2">Actions</th>
						</thead>
						<tbody>
							<c:forEach var="obj" items="${ ds }">
								<tr>
									<td>${ obj.id }</td>
									<td>${ obj.ten }</td>
									<td><c:choose>
											<c:when test="${ obj.loai == 0 }">Shirt</c:when>
											<c:when test="${ obj.loai == 1 }">Trousers</c:when>
											<c:otherwise> - </c:otherwise>
										</c:choose></td>

									<td>${ obj.user.hoTen }</td>
									<td><a style="font-size: 12px" class="btn btn-primary"
										href="/Assignment_Java4_SOF3011/admin/categories/edit?id=${ obj.id }">
											Update</a></td>
									<td><a class="btn btn-danger" id=${ obj.id }
										data-bs-toggle="modal"
										data-bs-target="#staticBackdrop${ obj.id }">Delete</a> <!-- Modal -->
										<div class="modal fade" id="staticBackdrop${ obj.id }"
											data-bs-backdrop="static" data-bs-keyboard="false"
											tabindex="-1" aria-labelledby="staticBackdropLabel"
											aria-hidden="true">
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
														Are you sure you want to delete this category?
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-outline-dark"
															data-bs-dismiss="modal">hmmm...No</button>
														<a type="button" class="btn btn-outline-primary"
															href="/Assignment_Java4_SOF3011/admin/categories/delete?id=${ obj.id }">Yeah
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

