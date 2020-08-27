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
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="#">Active</a>
		</li>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
			aria-expanded="false">Dropdown</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">Action</a> <a
					class="dropdown-item" href="#">Another action</a> <a
					class="dropdown-item" href="#">Something else here</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">Separated link</a>
			</div></li>
		<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
		<li class="nav-item"><a class="nav-link disabled" href="#"
			tabindex="-1" aria-disabled="true">Disabled</a></li>
	</ul>

	<div class="container">
		<div class="card">
			<div class="card-header">회원가입</div>
			<div class="card-body">
				<form>
					<!-- 이름 -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">이름</label> <input type="text"
								class="form-control" id="inputEmail4">
						</div>
					</div>
					<!-- ID -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword4">아이디</label> <input type="text"
								class="form-control" id="inputPassword4">
						</div>
					</div>
					<!-- Password -->
					<div class="form-group">
						<label for="inputAddress">비밀번호</label> <input type="password"
							class="form-control" id="inputAddress"
							placeholder="Write your password">
					</div>
					<!-- Email -->
					<div class="form-group">
						<label for="inputAddress">이메일</label> <input type="email"
							class="form-control" id="inputAddress"
							placeholder="example@example.com">
					</div>
					<!-- PhoneNumber -->
					<div class="form-group">
						<label for="inputAddress">전화번호</label> <input type="text"
							class="form-control" id="inputAddress"
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
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>