<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
<div class="container mt-3">

		<h1>Customer Report </h1>
		<a href="addCustomer" class="btn btn-primary"> Add Customer </a>
		<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">Customer ID</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">Update</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cus" items="${customer}">
						<tr>
							<td class="table-plus">${cus.id}</td>
							<td>${cus.firstName}</td>
							<td>${cus.lastName}</td>
							<td>${cus.email}</td>
							
							<td><a href="editCustomer/${cus.id}" class="btn btn-warning">
									Edit </a></td>
							<td><a href="deleteCustomer/${cus.id}"
								class="btn btn-danger"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>