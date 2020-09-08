<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/top.jsp"%>
<head>
<title>Add_Page</title>
</head>
<div class="container">
	<div class="add-box">
		<div class="card">
			<div class="card-body">
				<form name="addForm" method="post" action="./add">
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
				<a href="./list.jsp" class="btn btn-primary">목록</a>
				<div class="float-right">
					<button type="button" class="btn btn-success" id="btnAdd">등록</button>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../layout/script.jsp"%>
<script>
			$('#btnAdd').on('click', function()	{
				$('form[name=addForm]').submit();
			})
		</script>
</body>
</html>