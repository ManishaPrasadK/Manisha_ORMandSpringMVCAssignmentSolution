<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Relationship Management</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container p-3 my-3 bg-primary text-white">
  <h1 style="text-align:center">Customer Relationship Management Application </h1>
  <hr style="background-color:orange;height:1px;"></hr>
   <h3 style="text-align:center">Welcome!!</h3>
  
  <hr style="background-color:orange;height:2px;"></hr>
  
  
  
  <hr style="background-color:rgb(0,255,119);height:2px;"></hr>
 
</div>


	<div class="container mt-3">

		<h2>Add Customer Form</h2>
		<form action="insertCustomer" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="firstName">First Name </label> <input type="text"
							class="form-control" id="firstName" name="firstName"
							placeholder="Enter first name">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="lastName">Last Name </label> <input type="text"
							class="form-control" id="lastName" name="lastName"
							placeholder="Enter lastname">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="email">Email</label> <input
							type="text" class="form-control" id="email"
							name="email" placeholder="Enter your email">
					</div>
				</div>
				
			</div>

			

			<a href="${pageContext.request.contextPath }/"
				class="btn btn-warning"> Back </a>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>


</body>
</html>