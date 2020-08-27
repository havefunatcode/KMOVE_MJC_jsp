<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Random"%>

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
.view-box {
	margin-top: 50px;
}
</style>
<title>Board_Page</title>
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
		<div class="view-box">
		<!-- 글 내용 -->
			<div class="card">
				<div class="card-header">애국가</div>

				<div class="card-body">
					<h5 class="card-title">안녕하세요.</h5>
				</div>
				<p class="card-text">홍길동 2020.08.27 13:10:15</p>
				<p class="card-text">
					동해물과 백두산이 마르고 닳도록<br> 하느님이 보우하사 우리나라 만세.<br> 무궁화 삼천리 화려
					강산<br> 대한 사람, 대한으로 길이 보전하세.
				</p>

				<div class="card-footer">
					<a href="./list.jsp" class="btn btn-success">목록</a>
					<div class="float-right">
						<a href="./edit.jsp" class="btn btn-warning">수정</a>
						<button type="button" class="btn btn-danger" data-toggle="modal"
							data-target="#deleteModal">삭제</button>
					</div>
				</div>
			</div>
			
			<!-- 댓글 -->
			<div class="card" style="margin-top:20px;">
				<div class="card-body">
					<div>
						<form>
							<input type="text" class="fform-control">
						</form>	
					</div>
				</div>
				
				<div class="card-footer">
					<button type="button" class="btn btn-primary">등록</button>
					<div class="float-right">
						<button type="button" class="btn btn-warning">수정</button>
						<button type="button" class="btn btn-danger">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" tabindex="-1" id="deleteModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-danger">게시글 삭제</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="취소">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						삭제된 내용은 복구가 불가능합니다. <br>정말 삭제하시겠습니까?
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<div class="float-left">
						<button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form id="deleteForm" mehod="post" action="./delete">
		<input type="hidden" name="board_id">
	</form>
	
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
			$('#btnDelete').on('click', function()	{
				$('#deleteForm input[name=board_id]').val('abc');
				$('#deleteForm').submit();
			})
		</script>
</body>
</html>