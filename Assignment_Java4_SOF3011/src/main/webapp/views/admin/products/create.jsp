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
				<a href="/Assignment_Java4_SOF3011/admin/products/index"
					class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
					<svg class="bi me-2" width="55" height="24"></svg> <span
					class="fs-5 fw-semibold">Product</span>
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
						href="/Assignment_Java4_SOF3011/admin/products/create">
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
				action="/Assignment_Java4_SOF3011/admin/products/store"
				accept=".jpg, .png" enctype="multipart/form-data"
				style="margin-bottom: 1px">
				<div class="main_slider m-0 p-0"
					style=" background-image:url(${ pageContext.request.contextPath }/images/background7.png">
					<div class="container fill_height">
						<div class="row align-items-center fill_height">
							<div class="col">
								<div class="main_slider p-0" style="margin-top: 55px;">
									<div class="card mb-3"
										style="max-width: 650px; margin: 0 auto;">
										<div class="row g-0">
											<div class="card-body" style="margin: 0 auto">
												<h2 class="card-title text-center text-info">Product</h2>
												<div class="form-box">
													<div class="row">
														<div class="col-2"></div>
														<div class="col-8">
															<div class="row"
																style="padding-top: 10px; padding-bottom: 5px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 6px;">Name</label>
																</div>
																<div class="col-8">
																	<input autocomplete="off" class="col-12" type="text"
																		name="ten" style="font-size: 16px; padding: 5px;"
																		required="required" />
																</div>
															</div>
															<div class="row"
																style="padding-top: 10px; padding-bottom: 5px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 4px;">Category</label>
																</div>
																<div class="col-8">
																	<select class="col-12"
																		style="font-size: 16px; padding: 5px;"
																		name="category_id">
																		<c:forEach items="${ ds }" var="cate">
																			<option value="${ cate.id }">${ cate.ten }</option>
																		</c:forEach>
																	</select>
																	<!-- <input autocomplete="off" class="col-12" type="text"
																		name="category_id"
																		style="font-size: 16px; padding: 5px;"
																		required="required" /> -->
																</div>
															</div>
															<div class="row"
																style="padding-top: 10px; padding-bottom: 5px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 4px;">Quantity</label>
																</div>
																<div class="col-8">
																	<input autocomplete="off" class="col-12" type="text"
																		name="soLuong" style="font-size: 16px; padding: 5px;"
																		required="required" />
																</div>
															</div>
															<div class="row"
																style="padding-top: 10px; padding-bottom: 5px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 4px;">Price</label>
																</div>
																<div class="col-8">
																	<input autocomplete="off" class="col-12" type="text"
																		name="donGia" style="font-size: 16px; padding: 5px;"
																		required="required" />
																</div>
															</div>
															<div class="row"
																style="padding-top: 10px; padding-bottom: 10px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 4px;">Color</label>
																</div>
																<div class="col-8">
																	<input class="col-12" type="text" name="mauSac"
																		style="font-size: 16px; padding: 5px;"
																		required="required" />
																</div>
															</div>
															<div class="row" style="padding-top: 6px">
																<div class="col-4">
																	<label class="text-info"
																		style="font-size: 16px; padding-top: 4px">
																		Size</label>
																</div>
																<div class="col-8" style="padding-top: 4px">
																	<input type="radio" name="kichThuoc" value="0" /> <label
																		style="font-size: 16px; padding-right: 20px">S</label>
																	<input type="radio" name="kichThuoc" value="1" /> <label
																		style="font-size: 16px; padding-right: 20px">M</label>
																	<input type="radio" name="kichThuoc" value="2" /> <label
																		style="font-size: 16px; padding-right: 20px">L</label>
																	<input type="radio" name="kichThuoc" value="3" /> <label
																		style="font-size: 16px; padding-right: 20px">XL</label>
																	<input type="radio" name="kichThuoc" value="4" /> <label
																		style="font-size: 16px;">XXL</label>
																</div>
															</div>
															<div class="row"
																style="padding-top: 25px; padding-bottom: 25px">
																<div class="col-4">
																	<label class="text-info" style="font-size: 16px;">Image</label>
																</div>
																<div class="col-8">
																	<input class="btn btn-dark col-12 m-0 p-0" type="file"
																		name="img" style="font-size: 12px; padding: 5px;"
																		required="required" />
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
													<a href="/Assignment_Java4_SOF3011/admin/products/create"
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
<div class="row m-0 p-0" style="margin-top: 0px;">
			<c:if test="${ empty dsPro }">
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

			<c:if test="${ !empty dsPro }">
				<table class="table">
					<thead class="table-info">
						<th>Id</th>
						<th>Name</th>
						<th>Category</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Color</th>
						<th>Size</th>
						<th>Image</th>
						<th colspan="2">Actions</th>
					</thead>
					<tbody>
						<c:forEach var="obj" items="${ dsPro }">
							<tr>
								<td>${ obj.id }</td>
								<td>${ obj.ten }</td>
								<td>${ obj.cate.ten }</td>
								<td>${ obj.soLuong }</td>
								<td>${ obj.donGia }</td>
								<td>${ obj.mauSac }</td>
								<td><c:choose>
										<c:when test="${ obj.kichThuoc == 0 }">S</c:when>
										<c:when test="${ obj.kichThuoc == 1 }">M</c:when>
										<c:when test="${ obj.kichThuoc == 2 }">L</c:when>
										<c:when test="${ obj.kichThuoc == 3 }">XL</c:when>
										<c:when test="${ obj.kichThuoc == 4 }">XXL</c:when>
										<c:otherwise> - </c:otherwise>
									</c:choose></td>
								<td>${ obj.img }</td>

								<td><a style="font-size: 12px" class="btn btn-primary"
									href="/Assignment_Java4_SOF3011/admin/products/edit?id=${ obj.id }">
										Update</a></td>
								<td><a class="btn btn-danger" id=${ obj.id } data-bs-toggle="modal" data-bs-target="#staticBackdrop${ obj.id }">Delete</a>
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
										Are you sure you want to delete this product?
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-dark"
											data-bs-dismiss="modal">hmmm...No</button>
										<a type="button" class="btn btn-outline-primary"
											href="/Assignment_Java4_SOF3011/admin/products/delete?id=${ obj.id }">Yeah
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
		</div>
