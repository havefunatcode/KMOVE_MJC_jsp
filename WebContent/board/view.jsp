<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ include file="../layout/top.jsp"%>
<head>
<title>Board_Page</title>
</head>

<body>
	<div class="container">
		<div class="view-box">
			<!-- 글 내용 -->
			<div class="card">
				<div class="card-header">애국가</div>
				<div class="card-body">
					<p class="card-text">홍길동 2020.08.27 13:10:15</p>
					<p class="card-text">
						동해물과 백두산이 마르고 닳도록<br> 하느님이 보우하사 우리나라 만세.<br> 무궁화 삼천리 화려
						강산<br> 대한 사람, 대한으로 길이 보전하세.
					</p>
				</div>
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
			<div class="card" style="margin-top: 20px;">
				<div class="card-body">
					<div>
						<form>
							<textarea class="form-control" rows="2"
								placeholder="Write your comment	"></textarea>
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

	<form id="deleteForm" method="post" action="./delete">
		<input type="hidden" name="board_id">
	</form>

	<%@ include file="../layout/script.jsp"%>

	<script>
		$('#btnDelete').on('click', function() {
			$('#deleteForm input[name=board_id]').val('abc');
			$('#deleteForm').submit();
		})
	</script>
</body>
</html>