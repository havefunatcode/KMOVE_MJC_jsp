<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/top.jsp"%>
<head>
<title>Add_Page</title>
</head>
<body>
	<div class="container">
		<div class="add-box">

			<div class="card">

				<div class="card-body">
					<form id="editForm" method="post" action="./edit">
						<div class="form-group">
							<label>이름</label> <input type="text" class="form-control"
								placeholder="Wrtie your Name">
						</div>
						<div class="form-group">
							<label>제목</label> <input type="text" class="form-control"
								placeholder="Wrtie your Title">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" rows="10"
								placeholder="Write your content"></textarea>
						</div>
					</form>
				</div>

				<div class="card-footer">
					<a href="./view.jsp" class="btn btn-primary">뒤로가기</a>
					<div class="float-right">
						<button type="button" class="btn btn-success" id="btnEdit">수정</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="../layout/script.jsp"%>
	<script>
		$('#btnEdit').on('click', function() {
			$('#editForm').submit();
		})
	</script>
</body>
</html>