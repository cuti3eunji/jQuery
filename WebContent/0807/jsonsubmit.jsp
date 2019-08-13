<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
	%>
	<h3> 이름 : <%=name %> / 전화번호 : <%=tel %> </h3>
</body>
</html>