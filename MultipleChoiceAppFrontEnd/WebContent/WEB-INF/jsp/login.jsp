<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Stacked form</h2>
		<form:form action="get-random-questions" modelAttribute="examEntity" method="post">
			<div class="form-group">
				<label for="">Full name:</label> <input type="text"
					class="form-control" id="" placeholder="Enter fullname"
					name="fullName">
			</div>
			<div class="form-group">
				<label for="">Phone:</label> <input type="text" class="form-control"
					id="" placeholder="Enter phone" name="phone">
			</div>
			<div class="form-group">
				<label for="">Email:</label> <input type="text" class="form-control"
					id="" placeholder="Enter email" name="email">
			</div>
			<div class="form-group">
				<select name="categoryId">
					<c:forEach items="${listCategoryEntity}" var="listCategoryEntity">
						<option value="${listCategoryEntity.categoryId}">${listCategoryEntity.categoryName}</option>
					</c:forEach>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
</body>
</html>
