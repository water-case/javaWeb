<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m1" class="ex01.MemberBean" />
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="membersList" class="java.util.ArrayList" />

<%
	MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@text.com");
	membersList.add(m1);
	membersList.add(m2);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 목록 창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%">아이디</td>
			<td width="20%">비밀번호</td>
			<td width="20%">이름</td>
			<td width="20%">이메일</td>
		</tr>
		<tr align=center>
			<td>${membersList[0].id }</td>
			<td>${membersList[0].pwd }</td>
			<td>${membersList[0].name }</td>
			<td>${membersList[0].email }</td>
		</tr>
		<tr align=center>
			<td>${membersList[1].id }</td>
			<td>${membersList[1].pwd }</td>
			<td>${membersList[1].name }</td>
			<td>${membersList[1].email }</td>
		</tr>
	</table>
</body>
</html>