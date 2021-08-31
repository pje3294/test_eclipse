<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="data" class="model.message.MessageVO" scope="request" />
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정/삭제 화면</title>
<script type="text/javascript">
	function del() {
		result = confirm("영구 삭제하시겠습니까?");
		if (result == true) {
			document.form1.action.value = "delete";
			document.form1.submit();
		} else {
			return;
		}
	}
</script>
</head>
<body>


	<hr>
	<form action="control.jsp" method="post" name="form1">
		<input type="hidden" name="action" value="update"> <input
			type="hidden" name="mnum" value="<%=data.getMnum()%>">
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"
					value="<%=data.getWriter()%>"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"
					value="<%=data.getTitle()%>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content"
					value="<%=data.getContent()%>"></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><input type="date" name="date" value="<%=data.getWdate()%>"
					disabled></td>
			</tr>
			<tr>
				<td colspan='2'><input type="submit" value="내용 변경하기"> <input
					type="button" value="글 삭제하기" onClick="del()"></td>
			</tr>
		</table>
	</form>
<hr>

	<a href="control.jsp?action=list">메인으로 돌아가기</a>
</body>
</html> --%>


<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>글 수정/삭제 페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script type="text/javascript">
	function del() {
		result = confirm("영구 삭제하시겠습니까?");
		if (result == true) {
			document.form1.action.value = "delete";
			document.form1.submit();
		} else {
			return;
		}
	}
</script>

</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="index.html" class="title">Hyperspace</a>
		<nav>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="generic.html">Generic</a></li>
				<li><a href="elements.html" class="active">Elements</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner">
				<h1 class="major">글 수정/삭제 - form 타입 사용 </h1>

				<!-- Form -->
				<section>
					<form action="control.jsp" method="post" name="form1">
						<input type="hidden" name="action" value="update"> <input
							type="hidden" name="mnum" value="<%=data.getMnum()%>">
						<div class="row gtr-uniform">
							<div class="col-6 col-12-xsmall">
								<input type="text" name="writer" value="<%=data.getWriter()%>"
									placeholder="작성자" required>
							</div>
							<div class="col-6 col-12-xsmall">
								<input type="text" name="title" value="<%=data.getTitle()%>"
									placeholder="제목" required>
							</div>

							<div class="col-12">
								<input type="text" name="content" value="<%=data.getContent()%>"
									placeholder="내용" required>
							</div>

							<div class="col-6 col-12-xsmall">
								<input type="date" name="date" value="<%=data.getWdate()%>"
									disabled>
							</div>

							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="글 수정하기"
										class="primary" /></li>
									<li><input type="button" value="글 삭제하기" onClick="del()" /></li>
									<li><a href="control.jsp?action=list"><input type="button" value="메인으로 돌아가기"  /></a></li>
								</ul>
							</div>
						</div>
					</form>
				</section>

			</div>
		</section>

	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper alt">
		<div class="inner">
			<ul class="menu">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>