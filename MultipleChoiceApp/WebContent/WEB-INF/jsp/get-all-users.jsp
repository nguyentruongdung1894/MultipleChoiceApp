<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>List Users</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css'>
<link href="<c:url value="/resources/css/styleQuestion.css" />"
	rel="stylesheet">
<script src=<c:url value="/resources/js/fontawesome.js" />></script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /.Header -->
	<!-- Navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- /.Navbar -->
	<div class="content">
		<div class="navbar container">
			<ul>
				<li><a class="" href="" style="padding: 5px 15px">User
						Managerment >> List</a></li>
			</ul>
		</div>
		<div class="navbarNew container">
			<ul>
				<li><a class="" href="add-user" style="padding: 5px 15px">Add
						new</a></li>
			</ul>
		</div>
		<div class="container" id="jar" style="margin-bottom: 20px">
			<table id="" class="table-style-three" style="width: 100%">
				<thead>
					<tr class="">
						<th style="width: 5%">No</th>
						<th style="width: 10%">Admin ID</th>
						<th style="width: 10%">Password</th>
						<th style="width: 15%">FullName</th>
						<th style="width: 10%">Phone</th>
						<th style="width: 15%">Email</th>
						<th style="width: 25%">Address</th>
						<th colspan="2" style="width: 10%">Management</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listUsersDTO}" var="listUsersDTO">
						<tr class="content">
							<td style="text-align: center">${listUsersDTO.id}</td>
							<td style="text-align: center">${listUsersDTO.adminId}</td>
							<td style="text-align: center">${listUsersDTO.password}</td>
							<td style="text-align: center">${listUsersDTO.fullName}</td>
							<td style="text-align: center">${listUsersDTO.phone}</td>
							<td style="text-align: center">${listUsersDTO.email}</td>
							<td style="text-align: center">${listUsersDTO.address}</td>
							<td style="text-align: center"><a
								href="updateUser?adminId=${listUsersDTO.adminId}"><i
									class='fas fa-pen' style='font-size: 15px; color: #0665c0'></i></a></td>
							<td style="text-align: center"><a
								href="deleteUser?adminId=${listUsersDTO.adminId}"><i
									class='far fa-trash-alt'
									style='font-size: 15px; color: #0665c0'></i></a></td>
							<!-- <td style="text-align: center">
								<button
									onclick="document.getElementById('id01').style.display='block'">
									<i class='far fa-trash-alt'
										style='font-size: 15px; color: #0665c0'></i>
								</button>
							</td> -->
						</tr>
						<div id="id01" class="modal">
							<div class="model-bottom">
								<div
									style="text-align: center; width: 100%; background-color: blue">
									<p>Confirm delete</p>
								</div>
								<div style="text-align: center; width: 100%; height: 100px">
									<p>Do you want to delete this question?</p>
								</div>

								<div style="text-align: center; width: 100%">
									<div class="" style="float: left; width: 50%">
										<div style="background: #78b7f3; margin: 0 auto; width: 100px">
											<a href="" style="color: white">OK</a>
										</div>
									</div>
									<div class="" style="float: left; width: 50%">
										<div style="background: #78b7f3; margin: 0 auto; width: 100px">
											<a style="color: white"
												onclick="document.getElementById('id01').style.display='none'">Cancel</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<script>
			var modal = document.getElementById('id01');
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
		<nav>
			<ul class="pagination justify-content-center pagination-sm">
			</ul>
		</nav>
	</div>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- /.Footer -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/js/bootstrap.min.js'></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>