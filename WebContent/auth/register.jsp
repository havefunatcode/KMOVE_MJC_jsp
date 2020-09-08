<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
.container {
	margin: 100px;
}
</style>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">Sign Up</div>
			<div class="card-body">
				<form>
					<!-- Name -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputName">Name</label> <input type="text"
								class="form-control" id="inputName"
								placeholder="Write your Name">
						</div>
					</div>
					<!-- ID -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputId">ID</label> <input type="text"
								class="form-control" id="inputId"
								placeholder="Write your ID">
						</div>
					</div>
					<!-- Password -->
					<div class="form-group">
						<label for="inputPassword">Password</label> <input type="password"
							class="form-control" id="inputPassword"
							placeholder="Write your password">
					</div>
					<!-- Email -->
					<div class="form-group">
						<label for="inputEmail">E-mail</label> <input type="email"
							class="form-control" id="inputAddress"
							placeholder="example@example.com">
					</div>
					<!-- PhoneNumber -->
					<div class="form-group">
						<label for="inputAddress">Phone Number</label> <input type="text"
							class="form-control" id="inputEmail"
							placeholder="010-1234-5678">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<button type="submit" class="btn btn-primary">Sign in</button>
				<div class="float-right">
					<a href="./login.jsp">Log in</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/script.jsp" %>
</body>
</html>