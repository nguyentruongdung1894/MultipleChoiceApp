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
<link href="<c:url value="/resources/css/styleQuestion.css" />"
	rel="stylesheet">
<script src=<c:url value="/resources/js/fontawesome.js" />></script>
</head>
<body>
	<div class="content">
		<div class="container" id="jar">
			<form:form method="POST" action="welcome" modelAttribute="listQuestionsDTO">
				<c:forEach var="listQuestionsDTO" items="${listQuestionsDTO}"
					varStatus="status">
					<div class="content">
						<div class="row">
							<div class="col-sm-12">
								<b>Question ${status.count}:
									${listQuestionsDTO.contentQuestion} </b>
							</div>
						</div>
						<div class="row">
							<c:forEach items="${listQuestionsDTO.listAnswerEntity}"
								var="contact" varStatus="statusAn">
								<div class="col-sm-6">
									<div></div>
									<input type="radio" value="${contact.answerId}"
										name="${listQuestionsDTO.questionId}" />
									${contact.contentAnswer} <br />
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