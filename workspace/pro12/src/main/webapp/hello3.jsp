<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
	public String getName() {return name;}
%>
<% String age = request.getParameter("age"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>표현식 연습</title>
</head>
<body>
	<h1>안녕 <%=name %></h1>
	<h1>나이는 <%=age %>살</h1>
	<h1>키는 <%=180 %>cm</h1>
	<h1>나이+10은 <%=Integer.parseInt(age)+10 %>살</h1>	
</body>
</html>