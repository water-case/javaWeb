<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userId = request.getParameter("userId");
	if(userId.length() == 0){
%>
	<jsp:forward page="login.jsp" />
<%
	}
%>
	<h1> <%=userId %>님 로그인하셨습니다</h1>
</body>
</html>