<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.message.*, java.util.*"%>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request"/>

<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>글 목록 페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<!-- 수정/삭제를 위한 확인절차 -->
<script type="text/javascript">
	function check(mnum) {
		writer = prompt("글 정보 변경을 위해 작성자명을 입력하시오.");
		document.location.href = "control.jsp?action=edit&mnum=" + mnum
				+ "&writer=" + writer;
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
				<h1 class="major">게시물 목록 - 2번째 테이블 타입 사용</h1>

				<!-- Table -->
				<section>

					<div class="table-wrapper">
						<table class="alt">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (MessageVO vo : (ArrayList<MessageVO>) datas) {
								%>
								<tr>
									<td><a href="javascript:check(<%=vo.getMnum()%>)"><%=vo.getMnum()%></a></td>
									<td><%=vo.getTitle()%></td>
									<td><%=vo.getContent()%></td>
									<td><%=vo.getWriter()%></td>
									<td><%=vo.getWdate()%></td>
								</tr>

								<%
									}
								%>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4" align="right">
										<ul class="actions">
											<li><a href="form.jsp" class="button primary">새로운 글 쓰기</a></li>
										</ul>
									</td>
<!-- 
									<td colspan="4"></td>
									<td><a href="form.jsp">새로운 글 쓰기</a></td> -->
								</tr>
							</tfoot>
						</table>
					</div>
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

