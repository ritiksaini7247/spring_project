<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Update User</title>
</head>
<body>
	<div class="card"
		style="margin-top: 2%; margin-bottom: 5%; margin-left: 30%; margin-right: 30%;">
		<div class="card-body m-1">
			<form action="updateProcess">
				<h3>Update Record</h3>
				<%
				if (session.getAttribute("msg") != null) {
				%>
				<div class="alert alert-success" role="alert">${msg}</div>
				<%
				}
				%>
				<div class="mb-3">
					<label for="name" class="form-label">Enter Name*</label> <input
						type="text" value="${person.getPersonName()}" class="form-control"
						id="name" name="personName">
				</div>
				<div class="mb-3">
					<label for="username" class="form-label">Enter Username*</label> <input
						type="text" value="${person.getPersonUserName()}"
						class="form-control" id="username" name="personUserName">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email address*</label> <input
						type="email" class="form-control"
						value="${person.getPersonEmail()}" name="personEmail" id="email"
						aria-describedby="emailHelp">
					<div id="emailHelp" class="form-text">We'll never share your
						email with anyone else.</div>
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password*</label> <input
						value="${person.getPersonPassword()}" type="text"
						class="form-control" name="personPassword" id="password">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>