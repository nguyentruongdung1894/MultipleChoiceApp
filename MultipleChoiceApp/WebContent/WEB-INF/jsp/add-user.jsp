<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add User</title>
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
					<p style="padding: 5px">User Information</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<form:form action="add-user-succ" method="post"
					modelAttribute="userEntity">
					<ul class="form-style-1">
						<li><label>Admin ID</label> <input type="text"
							name="adminId" class="field-divided" placeholder="Admin ID" /></li>
						<li><label>Password</label> <input type="text"
							name="password" class="field-divided"
							placeholder="Password" /></li>
						<li><label>FullName</label> <input type="text"
							name="fullName" class="field-divided"
							placeholder="FullName" /></li>
						<li><label>Phone</label> <input type="text"
							name="phone" class="field-divided"
							placeholder="Phone" /></li>
						<li><label>Email</label> <input type="text"
							name="email" class="field-divided"
							placeholder="Email" /></li>
						<li><label>Address</label> <input type="text"
							name="address" class="field-divided"
							placeholder="Address" /></li>
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