<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form method="post" action="/Assignment_Java4_SOF3011/products" accept=".jpg, .png" enctype="multipart/form-data">
	 	<div>
	 		<label>Name</label>
	 		<input type="text" name="ten" /> 
	 	</div>
	 	
	 	<div>
	 		<label>Danh mục</label>
	 		<input type="text" name="category_id" /> 
	 	</div>
	 	
	 	
	 	<div>
	 		<label>Số lượng</label>
	 		<input type="number" name="soLuong" /> 
	 	</div>
	 	
	 	<div>
	 		<label>Đơn giá</label>
	 		<input type="text" name="donGia" /> 
	 	</div>
	 	
	 	<div>
	 		<label>Màu sắc</label>
	 		<input type="text" name="mauSac" /> 
	 	</div>
	 	
	 	<div>
	 		<label>Kích thước</label>
	 		<input type="number" name="kichThuoc" /> 
	 	</div>
	 	
	 	<div>
	 		<label>Ảnh</label>
       	 	<input type="text" name="description" />
       	 	<input type="file" name="img" />
	 	</div>
	 	
        <button>Gửi</button>
    </form>
</body>
</html>

<div class="main_slider p-0" style="margin-top: 0px;">
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
						</c:choose>
					</td>
					
					<td>${ obj.user.hoTen }</td>
					<td><a style="font-size: 12px" class="btn btn-primary"
						href="/Assignment_Java4_SOF3011/admin/categories/edit?id=${ obj.id }">
							Update</a></td>
					<td><a style="font-size: 12px" class="btn btn-danger"
						href="/Assignment_Java4_SOF3011/admin/categories/delete?id=${ obj.id }">
							Delete </a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
</div>

		</div>
	</div>
</div>
