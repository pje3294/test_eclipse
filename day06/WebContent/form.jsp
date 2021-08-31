<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>글쓰기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
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
				<h1 class="major">글쓰기 - 1번째 테이블 타입 이용</h1>


				<!-- Table -->
				<section>
					<div class="table-wrapper">
						<form action="control.jsp" method="post" name="form1">
							<input type="hidden" name="action" value="insert">
							<table border="1">
								<tr>
									<td>작성자</td>
									<td><input type="text" name="writer" required></td>
									<!-- 에러발생을 일차적으로 막기위해 required 사용 -->
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" name="title" required></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><input type="text" name="content" required></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="글작성" class="button primary">
									<input type="reset" value="초기화"></td>
								</tr>
							</table>
						</form>
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