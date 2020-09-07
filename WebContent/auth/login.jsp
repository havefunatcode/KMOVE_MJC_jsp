<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	session="true"%>
	
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<style>
.card {
	margin-top: 100px;
}
</style>
<title>Login_Page</title>
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
			<div class="card-Login-box">
				<div class="card-header">LogIn</div>
				<div class="card-body">
					<form method="post" action="../login" id="loginForm">
						<div class="form-group">
							<label for="exampleInputEmail1">ID</label> <input type="email"
								class="form-control" name="id"
								aria-describedby="emailHelp" placeholder="Wrtie your ID">	
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" name="password"
								placeholder="Wrtie your Password">
						</div>
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Check me out</label>
						</div>
					</form>
				</div>
				<div class="card-footer">
					<button type="button" class="btn btn-primary" id="btnLogin">Login</button>
					<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
					<!-- <button type="button" class="btn btn-primary" onclick="location.href='./register.jsp'">Register</button> -->
					<div class="float-right">
						<a href="./register.jsp">Register</a>
					</div>
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
	<script>
		// Press the Login Button	
		$('#btnLogin').on('click', function(e)	{
			//e.preventDefault는 고유 동작을 중단시키고, e.stopPropagation 는 상위 엘리먼트들로의 이벤트 전파를 중단시킨다.
			e.preventDefault();
			
			/*
			let, const를 사용하면 var를 사용할때보다 상당히 이점이 많다. 두개의 공통점은 var와 다르게 변수 재선언 불가능이다.
			let과 const의 차이점은 변수의 immutable여부이다. let은 변수에 재할당이 가능하지만,
			const는 변수 재선언, 재할당 모두 불가능하다.
			*/
			// use trim to delete space
			let id = $.trim( $('input[name="id"]').val() );
			let password = $('input[name="password"]').val();
			
			// different id 
			if(!id || id.length < 6 || id.length > 12)	{
				alert('Pleas Input your Id.');
				$('input[name="id"]').focus();
				return false;
			}
			// different password
			if(!password)	{
				alert('Pleas Input your password.');
				$('input[name="password"]').focus();
				return false;
			}
			
			// submit id, password
			$('#loginForm').submit();
		});
	</script>
</body>
</html>