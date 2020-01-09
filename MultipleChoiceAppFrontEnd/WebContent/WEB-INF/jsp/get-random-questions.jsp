<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container" id="jar">
		<form:form method="POST" action="">
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
								<input type="radio" value="Name"
									name="listQuestionsDTO.correctAnswer" />
								${contact.contentAnswer} <br />
							</div>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
			<input type="submit" value="Submit" />
		</form:form>
	</div>
</body>
</html>