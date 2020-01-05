<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Category</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css'>
<link href="<c:url value="/resources/css/styleQuestion.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/styleAddQuestion.css" />"
	rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /.Header -->
	<!-- Navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- /.Navbar -->

	<div class="navbar container">
		<ul>
			<li><a class="" href="" style="padding: 5px 15px">Question
					Managerment >> Add new</a></li>
		</ul>
	</div>
	<div class="content container" style="margin-bottom: 15px">
		<div class="row">
			<div class="col-sm-12">
				<div
					style="text-align: center; width: 100%; background-color: #0665c0">
					<p style="padding: 5px">Category Information</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<form:form action="add-category-succ" method="post"
					modelAttribute="categoryEntity">
					<ul class="form-style-1">
						<li><label>Category ID</label> <input type="text"
							name="categoryId" class="field-divided" placeholder="Category ID" /></li>
						<li><label>Category Name</label> <input type="text"
							name="categoryName" class="field-divided" placeholder="Category Name" /></li>
						<li><label>Status</label> <select name="status"
							class="field-select">
								<option value="true">Display</option>
								<option value="false">Hide</option>
						</select></li>
						<li
							style="display: inline-block; float: left; margin-right: 20px;"><input
							type="submit" value="Add" /></li>
						<li style="display: inline-block; float: left;"><input
							type=button value="Cancel" onclick="history.go(-1)" /></li>
					</ul>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- /.Footer -->
	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/js/bootstrap.min.js'></script>
</body>
</html>