<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ include file="../layout/top.jsp"%>
<head>
<title>Board_Page</title>
</head>

<body>
	<%
		Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	%>
	<div class="list-box">
		<div class="container">
			<div class="card">
				<div class="card-header float-right">
					<a href="./add.jsp" class="btn btn-primary">등록</a>
				</div>
				<div class="card-body">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>작성일시</th>
							</tr>
						</thead>
						<tbody>
							<%
								String name[] = { "홍길동", "최민수", "김영수", "김아름", "박문수", "강륭강", "과로사", "꽈뚜룹", "앰비션", "프레이" };
							String title[] = { "압둘알리", "죽기장인", "강륭궁디", "짝궁딩이", "오리궁디", "강륭궁디", "닭가슴살", "스테이크", "배고프다", "잉기모륑" };
							for (int i = 1; i <= 10; i++) {
								Random random = new Random();
								int randomInt = random.nextInt(10);
								String randomName = name[randomInt];
								String randomTitle = title[randomInt];
							%>
							<tr>
								<td><%=i%></td>
								<td><a href="./view.jsp"><%=randomTitle%></a></td>
								<td><%=randomName%></td>
								<td><%=sf.format(nowTime)%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
				<div class="card-footer text-right">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<div class="float-left">
						<button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
					</div>
				</div>
			</div>

		</div>
	</div>
<%@ include file="../layout/script.jsp" %>
</body>
</html>