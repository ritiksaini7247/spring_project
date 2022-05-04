<%@page import="java.util.Iterator"%>
<%@page import="com.example.demo.model.Person"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Users</title>
</head>
<body>
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Username</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Person> persons = (List<Person>) session.getAttribute("persons");
			Iterator<Person> itr = persons.iterator();
			int i = 1;
			while (itr.hasNext()) {
				Person p = itr.next();
			%>
			<tr>
				<th scope="row"><%=i%></th>
				<td><%=p.getPersonName()%></td>
				<td><%=p.getPersonEmail()%></td>
				<td><%=p.getPersonUserName()%></td>
				<td><a href="/updateUser/<%=p.getPersonId()%>"
					style="margin-right: 5px"><button type="button"
							class="btn btn-warning">
							<i class='fas fa-user-edit'></i>
						</button></a><a href="deleteUser/<%=p.getPersonId()%>"><button
							type="button" class="btn btn-danger">
							<i class='fas fa-user-times'></i>
						</button></a></td>
			</tr>
			<%
			i++;
			}
			%>
		</tbody>
	</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>