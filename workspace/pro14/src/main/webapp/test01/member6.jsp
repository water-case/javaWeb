<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="ex02.MemberBean" />
<jsp:setProperty name="m" property="*" />
<jsp:useBean id="addr" class="ex02.Address" />
<jsp:setProperty name="addr" property="city" value="서울" />
<jsp:setProperty name="addr" property="zipcode" value="07654" />

<%
	m.setAddr(addr);
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
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="5%">이메일</td>
			<td width="5%">도시</td>
			<td width="5%">우편번호</td>
		</tr>
		<tr align=center>
			<td>${m.id }</td>
			<td>${m.pwd }</td>
			<td>${m.name }</td>
			<td>${m.email }</td>
			<td><%=m.getAddr().getCity() %></td>
			<td><%=m.getAddr().getZipcode() %></td>
		</tr>
		<tr align=center>
			<td>${m.id }</td>
			<td>${m.pwd }</td>
			<td>${m.name }</td>
			<td>${m.email }</td>
			<td>${m.addr.city }</td>
			<td>${m.addr.zipcode }</td>
		</tr>
	</table>
</body>
</html>