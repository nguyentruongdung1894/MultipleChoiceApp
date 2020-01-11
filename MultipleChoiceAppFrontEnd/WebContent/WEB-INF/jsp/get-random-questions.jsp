<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>List Categories</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css'>
<script src=<c:url value="/resources/js/fontawesome.js" />></script>
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
<style type="text/css">
.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6,
	.col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
	padding-right: 0;
	padding-left: 0;
}

.logo {
	width: 35%;
}

.textHeader {
	font-size: 25px;
	color: #ee7c04;
	margin-left: 55px;
}

.timeDate {
	padding: 7px
}

.title {
	background: #ee7c04;
	padding: 5px 0px;
	text-align: center;
	margin-bottom: 25px;
}

.contentAnswer {
	padding: 35px 70px;
}

.childcontentAnswer{
	padding: 5px 0px;
}
</style>
</head>

<body>
	<div class="">
		<div class="row">
			<div class="col-sm-10">
				<img alt="" src="<c:url value="/resources/images/logo.png" />"
					class="logo">
			</div>
			<div class="col-sm-2">
				<div class="row">
					<div class="col-sm-12 timeDate">
						<b>Date</b>
					</div>
					<div class="col-sm-12 timeDate">
						<b>Time</b>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<b class="textHeader">CHALLENGE FOR CHANGE</b>
			</div>
		</div>
	</div>
	<div class="">
		<div class="container" id="jar">
			<div class="row" style="margin-bottom: 10px;">
				<div class="col-sm-10"></div>
				<div class="col-sm-2">
					<b class="">Hi: ${examEntity.fullName}</b>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 title">
					<b>Theary test: JAVA (20 Question)</b>
				</div>
			</div>
			<form:form method="POST" action="welcome"
				modelAttribute="listQuestionsDTO">
				<input type="text" name="fullName" value="${examEntity.fullName}"
					style="display: none;">
				<input type="text" name="phone" value="${examEntity.phone}"
					style="display: none;">
				<input type="text" name="email" value="${examEntity.email}"
					style="display: none;">
				<c:forEach var="content"
					items="${listQuestionsDTO.listQuestionEntity}" varStatus="status">
					<div class="content">
						<div class="row">
							<div class="col-sm-12">
								<input type="text"
									name="listQuestionEntity[${status.index}].questionId"
									value="${content.questionId}" style="display: none;"> <b>Question
									${status.count}: ${content.contentQuestion} </b>
							</div>
						</div>
						<div class="row contentAnswer">
							<c:forEach items="${content.listAnswerEntity}" var="contact"
								varStatus="statusa">
								<div class="col-sm-6 childcontentAnswer">
									<input type="checkbox"
										name="listQuestionEntity[${status.index}].listAnswerEntity[${statusa.index}].answerId"
										value="${contact.answerId }"> ${contact.contentAnswer}<br>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="questionSQL"
					items="${listQuestionsDTO.listQuestionEntitySQL}"
					varStatus="status">
					<div class="content">
						<div class="row">
							<div class="col-sm-12">
								<input type="text"
									name="listQuestionEntitySQL[${status.index}].questionId"
									value="${questionSQL.questionId}" style="display: none;">
								<b>Question ${status.count}: ${questionSQL.contentQuestion}
								</b>
							</div>
						</div>
						<div class="row contentAnswer">
							<c:forEach items="${questionSQL.listAnswerEntity}"
								var="answerSQL" varStatus="statusa">
								<div class="col-sm-6">
									<input type="checkbox"
										name="listQuestionEntitySQL[${status.index}].listAnswerEntity[${statusa.index}].answerId"
										value="${answerSQL.answerId }">
									${answerSQL.contentAnswer}<br>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
				<input type="submit" value="Submit" />
			</form:form>
		</div>
		<nav>
			<ul class="pagination justify-content-center pagination-sm">
			</ul>
		</nav>
	</div>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/js/bootstrap.min.js'></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>