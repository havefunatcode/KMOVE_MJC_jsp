<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>

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
.container {
	margin-top: 100px;
}
</style>
<title>Login_Page</title>
</head>
<body>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-md-6">
				<div class="card login-box">
					<div class="card-header">LogIn</div>
					<div class="card-body">
						<form method="post" action="../login" id="loginForm">
							<div class="form-group">
								<label for="exampleInputEmail1">ID</label> <input type="email"
									class="form-control" name="id" aria-describedby="emailHelp"
									placeholder="Wrtie your ID">
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
	</div>
	<%@ include file="../layout/script.jsp"%>
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