<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" 
		action="/SP22B2_SOF3011_IT16301/categories">
		<div>
			<label>Tên danh mục</label>
			<input type="text" name="ten">
		</div>
		<div>
			<label>Người tạo</label>
			<select name="user_id">
				<c:forEach items="${ dsUser }" var="user">
					<option value="${ user.id }">${ user.hoTen }</option>
					<!-- <option value="3">ABC</option> -->
				</c:forEach>
			</select>
		</div>
		<div>
			<button>Thêm mới</button>
		</div>
	</form>
</body>
</html>