<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
	<div class="mt-2 mb-2">
		<a class="btn btn-success"
			href="/SP22B2_SOF3011_IT16301/admin/users/create">Thêm mới</a> 
		<a class="ml-2 btn btn-primary" href="/SP22B2_SOF3011_IT16301/login">Login</a>
	</div>
	<!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Action <i class="bi bi-chevron-down"></i>
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Separated link</a></li>
  </ul>
</div>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
	<table class="table">
		<thead class="table-primary">
			<th>Họ tên</th>
			<th>Địa chỉ</th>
			<th>SĐT</th>
			<th>Email</th>
			<th>Giới tính</th>
			<th colspan="2">Thao tác</th>
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
					<td><a class="btn btn-primary"
						href="/SP22B2_SOF3011_IT16301/admin/users/edit?id=${ obj.id }">
							Cập nhật </a></td>
					<td><a class="btn btn-danger"
						href="/SP22B2_SOF3011_IT16301/admin/users/delete?id=${ obj.id }">
							Xóa </a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
