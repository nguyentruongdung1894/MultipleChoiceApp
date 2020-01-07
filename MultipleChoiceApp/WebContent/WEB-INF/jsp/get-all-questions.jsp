<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>List Questions</title>
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
				<li><a class="" href="" style="padding: 5px 15px">Question
						Managerment >> List</a></li>
			</ul>
		</div>
		<div class="navbarNew container">
			<ul>
				<li><a class="" href="add-question" style="padding: 5px 15px">Add
						new</a></li>
			</ul>
		</div>
		<div class="container" id="jar" style="margin-bottom: 20px">
			<table id="" class="table-style-three" style="width: 100%">
				<thead>
					<tr class="">
						<th style="width: 5%">No</th>
						<th style="width: 10%">Quest ID</th>
						<th style="width: 45%">Text</th>
						<th style="width: 10%">Category</th>
						<th style="width: 10%">Type</th>
						<th colspan="2" style="width: 10%">Management</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listQuestionsDTO}" var="listQuestionsDTO">
						<tr class="content">
							<td style="text-align: center">${listQuestionsDTO.id}</td>
							<td style="text-align: center">${listQuestionsDTO.questionId}</td>
							<td>${listQuestionsDTO.contentQuestion}</td>
							<td style="text-align: center">${listQuestionsDTO.categoryName}</td>
							<td style="text-align: center">${listQuestionsDTO.type}</td>
							<td style="text-align: center"><a
								href="updateQuestion?questionId=${listQuestionsDTO.questionId}"><i
									class='fas fa-pen' style='font-size: 15px; color: #0665c0'></i></a></td>
							<td style="text-align: center">
								<button onclick="show('${listQuestionsDTO.questionId}')">
									<i class='far fa-trash-alt'
										style='font-size: 15px; color: #0665c0'></i>
								</button>
							</td>
						</tr>
						<div id="id01" class="modal">
							<div class="model-bottom">
								<div
									style="text-align: center; width: 100%; background-color: blue">
									<p>Confirm delete</p>
								</div>
								<div style="text-align: center; width: 100%; height: 100px">
									<p>
										Do you want to delete this question? <span id="idQuestion"></span>
										<input type="hidden" id="inputQ">
									</p>
								</div>

								<div style="text-align: center; width: 100%">
									<div class="" style="float: left; width: 50%">
										<div style="background: #78b7f3; margin: 0 auto; width: 100px">
											<a onclick="del()" href="#" style="color: white">OK</a>
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
		<script type="text/javascript">
			function show(id) {
				document.getElementById('id01').style.display = "block";
				document.getElementById("idQuestion").innerHTML = id;
				document.getElementById("inputQ").value = id;

			}
			function del() {
				var id = document.getElementById("inputQ").value
				window.location.href = "deleteQuestion?questionId=" + id;
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