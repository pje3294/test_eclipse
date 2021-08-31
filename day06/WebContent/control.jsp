<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,model.message.*"
	errorPage="error.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="messageDAO" class="model.message.MessageDAO" />
<jsp:useBean id="messageVO" class="model.message.MessageVO" />
<jsp:setProperty property="*" name="messageVO" />
<%
	// 컨트롤러를 호출했을때의 요청 파라미터를 분석
	String action = request.getParameter("action");

	if (action.equals("list")) {
		ArrayList<MessageVO> datas = messageDAO.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("list.jsp");
		
	} else if (action.equals("insert")) {
		if (messageDAO.insertDB(messageVO)) {
			response.sendRedirect("control.jsp?action=list");
		}

		else {
			throw new Exception("DB 추가 오류 발생!");
		}
	} else if (action.equals("delete")) {
		if (messageDAO.deleteDB(messageVO)) {
			response.sendRedirect("control.jsp?action=list");
		}

		else {
			throw new Exception("DB 삭제 오류 발생!");
		}
	} else if (action.equals("update")) {
		if (messageDAO.updateDB(messageVO)) {
			response.sendRedirect("control.jsp?action=list");
		} else {
			throw new Exception("DB 변경 오류 발생!");
		}
	} else if (action.equals("edit")) {
		if (request.getParameter("writer").equals("writer")) {
			MessageVO data = messageDAO.getDBData(messageVO);
			request.setAttribute("data", data);
			pageContext.forward("edit.jsp");
		} else {
			out.println("<script>alert('글 수정/삭제 권한이 없습니다!');history.go(-1)</script>");
		}
	} else {
		//url로 없는 파라미터 입력시
		out.println("<script>alert('올바르지않은 접근입니다!(파라미터 확인)');history.go(-1)</script>");
	}
%>













<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨트롤러</title>
</head>
<body>

</body>
</html>