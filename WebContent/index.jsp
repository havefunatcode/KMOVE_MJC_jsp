<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"
    session="true" %>
    
<%
//Session information
String id = (String)session.getAttribute("id");
Boolean login = (Boolean)session.getAttribute("login");

if(id == null || !login)	{
	//���� ������ ���� ���
	response.sendRedirect("./auth/login.jsp");
} else	{
	//���� ������ �ִ� ��� main.jsp�� �̵�
	response.sendRedirect("./main/main.jsp");
}
%>