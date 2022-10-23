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

		<h1>Edit Customer Form</h1>
		<form action="updateCustomer" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="id">Id</label> <input type="text"
							value="${customer.id}" class="form-control" id="id" name="id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="firstName">First Name</label> <input type="text"
							value="${customer.firstName}" class="form-control" id="firstName"
							name="firstName" placeholder="Enter First Name">
					</div>
				</div>
				
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="lastName">Last Name</label> <input
							type="text" class="form-control" id="lastName"
							value="${customer.lastName}" name="lastName"
							placeholder="Enter Last Name">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="email">Email</label> <input type="text"
							value="${customer.email}" class="form-control" id="email"
							name="email" placeholder="Enter Email">
					</div>
				</div>
			</div>

			

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
</body>
</html>