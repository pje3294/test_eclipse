<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="day04.MemberDAO" scope="application" />
<jsp:useBean id="vo" class="day04.MemberVO" />
<jsp:setProperty property="*" name="vo" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int result = memberDAO.isMem(vo);
		System.out.println(result);
	%>

</body>
</html>