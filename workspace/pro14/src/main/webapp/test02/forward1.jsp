<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "hong");
	request.setAttribute("pwd", "1234");
	request.setAttribute("name", "홍길동");
	application.setAttribute("email", "hong@test.com");
	
	MemberBean member = new MemberBean("lee", "1234", "이순신", "lee@test.com");
	request.setAttribute("member", member);
	
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
	<jsp:forward page="member1.jsp"></jsp:forward>
</body>
</html>