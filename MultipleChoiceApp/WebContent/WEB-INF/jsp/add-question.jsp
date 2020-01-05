<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Question</title>
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
	<div class="content container">
		<div class="row">
			<div class="col-sm-6">
				<div
					style="text-align: center; width: 100%; background-color: #0665c0">
					<p style="padding: 5px">Question Information</p>
				</div>
				<form action="add-question-succ" method="post">
					<ul class="form-style-1">
						<li><label>Quest ID</label> <input type="text"
							name="macauhoi" class="field-divided" placeholder="Quest ID" /></li>
						<li><label>Text</label> <textarea name="noidungcauhoi"
								class="field-long field-textarea"></textarea></li>
						<li><label>Category</label> <select name="categoryId"
							class="field-select">
								<!-- <option value="C00001">HTML</option>
								<option value="C00002">JAVA</option>
								<option value="C00003">CSS</option>
								<option value="C00004">HTML</option>
								<option value="C00005">JAVA</option> -->
								<c:forEach items="${listCategoriesEntity}" var="listCategoriesEntity">
									<option value="${listCategoriesEntity.categoryId}">${listCategoriesEntity.categoryName}</option>
								</c:forEach>
						</select></li>
						<li><label>Type</label> <select name="type"
							class="field-select">
								<option value="False">Single</option>
								<option value="True">Multi</option>
						</select></li>
						<li><label>Status</label> <select name="status"
							class="field-select">
								<option value="True">Display</option>
								<option value="False">Hide</option>
						</select></li>
						<li><input type="submit" value="Add" /></li>
					</ul>
				</form>
			</div>
			<div class="col-sm-6">
				<div
					style="text-align: center; width: 100%; background-color: #0665c0">
					<p style="padding: 5px">Answers</p>
				</div>
				<div class="form-style-1" style="margin-top: 10px; height: 100px">
					<label>Answers 1</label>
					<div style="width: 100%">
						<div style="float: left; width: 80%; padding-right: 15px">
							<textarea name="" id="" class="field-long field-textarea-left"></textarea>
						</div>
						<div style="float: left; width: 20%">
							<div style="height: 25px">
								<label class="container">True <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
							<div style="height: 25px">
								<label class="container">False <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-style-1" style="margin-top: 10px; height: 100px">
					<label>Answers 2</label>
					<div style="width: 100%">
						<div style="float: left; width: 80%; padding-right: 15px">
							<textarea name="" id="" class="field-long field-textarea-left"></textarea>
						</div>
						<div style="float: left; width: 20%">
							<div style="height: 25px">
								<label class="container">True <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
							<div style="height: 25px">
								<label class="container">False <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-style-1" style="margin-top: 10px; height: 100px">
					<label>Answers 3</label>
					<div style="width: 100%">
						<div style="float: left; width: 80%; padding-right: 15px">
							<textarea name="" id="" class="field-long field-textarea-left"></textarea>
						</div>
						<div style="float: left; width: 20%">
							<div style="height: 25px">
								<label class="container">True <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
							<div style="height: 25px">
								<label class="container">False <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-style-1" style="margin-top: 10px; height: 100px">
					<label>Answers 4</label>
					<div style="width: 100%">
						<div style="float: left; width: 80%; padding-right: 15px">
							<textarea name="" id="" class="field-long field-textarea-left"></textarea>
						</div>
						<div style="float: left; width: 20%">
							<div style="height: 25px">
								<label class="container">True <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
							<div style="height: 25px">
								<label class="container">False <input type="radio"
									checked="checked" name="radio">
								</label>
							</div>
						</div>
					</div>
				</div>
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