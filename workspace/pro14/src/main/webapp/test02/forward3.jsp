<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("utf-8");
	List memberList = new ArrayList();
	MemberBean m1 = new MemberBean("lee", "1234", "이순신", "lee@test.com");
	MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");
	memberList.add(m1);
	memberList.add(m2);
	request.setAttribute("memberList", memberList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<jsp:forward page="member3.jsp"></jsp:forward>
</body>
</html>