<%@page import="usolv.com.vn.entitys.QuestionEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Question</title>
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
			<div class="col-sm-6">
				<div
					style="text-align: center; width: 100%; background-color: #0665c0">
					<p style="padding: 5px">Question Information</p>
				</div>
			</div>
			<div class="col-sm-6">
				<div
					style="text-align: center; width: 100%; background-color: #0665c0">
					<p style="padding: 5px">Answers</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<form:form action="update-question-succ" method="post"
					modelAttribute="listAnswers">
					<div class="row">
						<div class="col-sm-6">
							<ul class="form-style-1">

								<%
									QuestionEntity questionEntity = (QuestionEntity) request.getAttribute("questionEntity");
										int length = String.valueOf(questionEntity.getQuestionId()).length();
										for (int i = 0; i < 4 - length; i++) {
								%>

								<%
									}
								%>
								<li><label>Quest ID</label> <input type="text"
									name="questionId" class="field-divided" placeholder="Quest ID"
									value="${questionEntity.questionId}" /></li>


								<li><label>Text</label> <textarea name="contentQuestion"
										class="field-long field-textarea">${questionEntity.contentQuestion}</textarea></li>
								<li><label>Category</label> <select name="categoryId"
									class="field-select">
										<c:forEach items="${listCategoriesEntity}"
											var="listCategoriesEntity">
											<option value="${listCategoriesEntity.categoryId}">${listCategoriesEntity.categoryName}</option>
										</c:forEach>
								</select></li>
								<li><label>Type</label> <select name="type"
									class="field-select">
										<option value="false">Single</option>
										<option value="true">Multi</option>
								</select></li>
								<li><label>Status</label> <select name="status"
									class="field-select">
										<option value="true">Display</option>
										<option value="false">Hide</option>
								</select></li>
								<li
									style="display: inline-block; float: left; margin-right: 20px;"><input
									type="submit" value="Update" /></li>
								<li
									style="display: inline-block; float: left; margin-right: 20px; background-color: #4b99ad; padding: 8px">
									<a
									href="deleteQuestion?questionId=${questionEntity.questionId}"
									style="color: white; text-decoration: none;">Delete</a>
								</li>
								<li style="display: inline-block; float: left;"><input
									type=button value="Cancel" onclick="history.go(-1)" /></li>
							</ul>
						</div>
						<div class="col-sm-6">
							<c:forEach items="${listAnswers}" var="answerEntitys"
								varStatus="status">
								<div class="form-style-1"
									style="margin-top: 10px; height: 140px">
									<label>Answers ${status.count}</label> <label>Quest ID</label>
									<input type="text"
										name="answerEntitys[${status.index}].answerId"
										value="${answerEntitys.answerId}" class="field-divided"
										placeholder="Answer ID" />
									<div style="width: 100%">
										<div style="float: left; width: 80%; padding-right: 15px">
											<textarea name="answerEntitys[${status.index}].contentAnswer"
												class="field-long field-textarea-left">${answerEntitys.contentAnswer}</textarea>
										</div>
										<div style="float: left; width: 20%">
											<div style="height: 25px">
												<label class="container">True <input type="radio"
													value="true" checked="checked"
													name="answerEntitys[${status.index}].correctAnswer">
												</label>
											</div>
											<div style="height: 25px">
												<label class="container">False <input type="radio"
													value="false" checked="checked"
													name="answerEntitys[${status.index}].correctAnswer">
												</label>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
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