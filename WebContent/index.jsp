<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"
    session="true" %>
    
<%
//Session information
String id = (String)session.getAttribute("id");
Boolean login = (Boolean)session.getAttribute("login");

if(id == null || !login)	{
	//세션 정보가 없는 경우
	response.sendRedirect("./auth/login.jsp");
} else	{
	//세션 정보가 있는 경우 main.jsp로 이동
	response.sendRedirect("./main/main.jsp");
}
%>