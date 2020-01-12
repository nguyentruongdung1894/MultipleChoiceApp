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
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
</head>
<body>
	<div class="header">
		<div class="row">
			<div class="col-sm-12">
				<img alt="" src="<c:url value="/resources/images/logo.png" />"
					class="logo">
			</div>
			<div class="col-sm-12">
				<b class="textHeader">CHALLENGE FOR CHANGE</b>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="formLogin">
			<div class="hederFromLogin">
				<b>Thong tin ung vien</b>
			</div>
			<div class="form">
				<form:form action="get-random-questions" modelAttribute="examEntity"
					method="post" onsubmit="return validateForm()" name="myForm">
					<div class="row">
						<div class="col-sm-2 lable">
							<label for="">Full name:</label>
						</div>
						<div class="col-sm-10 inputdiv">
							<input type="text" class="form-control" id="fullName"
								placeholder="Enter fullname" name="fullName"> <label
								class="check">(*)</label>
						</div>
						<div class="col-sm-2 lable">
							<label for="">Phone:</label>
						</div>
						<div class="col-sm-10 input">
							<input type="text" class="form-control" id="phone"
								placeholder="Enter phone" name="phone"> <label
								class="check">(*)</label>
						</div>
						<div class="col-sm-2 lable">
							<label for="">Email:</label>
						</div>
						<div class="col-sm-10 input">
							<input type="text" class="form-control" id="email"
								placeholder="Enter email" name="email"> <label
								class="check">(*)</label>
						</div>
						<div class="col-sm-2 lable">
							<label for="">Language:</label>
						</div>
						<div class="col-sm-10 input">
							<select name="categoryId" class="form-control">
								<c:forEach items="${listCategoryEntity}"
									var="listCategoryEntity">
									<option value="${listCategoryEntity.categoryId}">${listCategoryEntity.categoryName}</option>
								</c:forEach>
							</select> <label class="check">(*)</label>
						</div>
					</div>
					<div style="width: 100%; margin: 0 auto; text-align: center">
						<button type="submit" class="btn">Start</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<div id="myModal" class="modal">
		<div class="modal-content">
			<div
				style="border-bottom: 1px black solid; padding: 5px; background: #ee7c04">Loi
				input</div>
			<div style="text-align: center; margin: 10px">
				Hay input <span id="title"></span>
			</div>
			<div style="text-align: center; margin: 10px">
				<button
					style="background: #ee7c04; padding: 5px 35px; border: 1px black solid"
					onclick="document.getElementById('myModal').style.display='none'">OK</button>
			</div>
		</div>
	</div>

	<script>
		function validateForm() {
			var fullName = document.forms["myForm"]["fullName"].value;
			var phone = document.forms["myForm"]["phone"].value;
			var email = document.forms["myForm"]["email"].value;
			if (fullName == "") {
				document.getElementById("myModal").style.display = "block";
				document.getElementById("title").innerHTML = "full name";
				return false;
			}
			if (phone == "") {
				document.getElementById("myModal").style.display = "block";
				document.getElementById("title").innerHTML = "phone";
				return false;
			}
			if (email == "") {
				document.getElementById("myModal").style.display = "block";
				document.getElementById("title").innerHTML = "email";
				return false;
			}
		}
		var modal = document.getElementById("myModal");
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
