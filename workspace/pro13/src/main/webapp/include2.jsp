<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2.jsp</title>
</head>
<body>
	쇼핑몰 중심 시작 <br>
	<jsp:include page="duke_image.jsp" flush="true">
		<jsp:param name="name" value="듀크2" />
		<jsp:param name="imgName" value="duke2.png" />
	</jsp:include>
	<br>
	쇼핑몰 중심 끝 
</body>
</html>