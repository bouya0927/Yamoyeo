<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Ya! MoYeo | 회원가입</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/heroic-features.css" rel="stylesheet">
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Favicons -->
<link href="vendor/img/favicon.png" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/landing-page.min.css" rel="stylesheet">

<style>
tr, td {
	text-align: center;
	padding: 10px;
	width: 300px;
	height: 50px;
}
</style>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">

			<a href="index.jsp"><img src="assets/img/ya.png" href="index.jsp"
				alt="" width="95px" height="35px"></a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:choose>
						<c:when test="${sessionScope.loginId eq 'admin'}">
							<h3>관리자 모드</h3>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberList'">회원목록</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberLogout'">로그아웃</a></li>
						</c:when>

						<c:when test="${sessionScope.loginId != null}">
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberView?yId=${sessionScope.loginId}'">내
									정보</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberLogout'">로그아웃</a></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='JoinForm.jsp'">회원가입</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='LoginForm.jsp'">로그인</a></li>
						</c:otherwise>

					</c:choose>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='BWrite.jsp'">글작성</a></li>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='boardList'">목록</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<br> <br> <br> <br> <br> <br>



		<h2>회원가입</h2>
		<form action="memberJoin" method="POST" name="joinForm">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="yId" id="yId"> <input
						type="button" onclick="IdCheck()" value="중복확인" class="btn btn-primary"> <br>
						<span id="idResult"></span></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="yPw" id="yPw"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="yName" id="yName"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="yBirth" id="yBirth"></td>
				</tr>

				<tr>
					<td>성별</td>
					<td>남자<input type="radio" name="yGender" value="남자">
						여자<input type="radio" name="yGender" value="여자"></td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input type="email" name="yEmail" id="yEmail"></td>
				</tr>
				<tr>
					<td>사진</td>
					<td><input type="file" name="yFile" ></td>
				</tr>

				<tr>
					<td colspan="2"><input type="button" onclick="submitForm()"
						value="회원가입" class="btn btn-primary"> <input type="reset" value="다시작성" class="btn btn-primary"></td>
				</tr>

			</table>
		</form>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<h3 class="text-white">
				<a href="#">새 그룹 시작하기</a>
			</h3>
			<hr>
		</div>

		<div class="container">
			<table>
				<tr>
					<td><a href="#" class="text-white">내 계정</a></td>
					<td><a href="#" class="text-white">탐색</a></td>
					<td><a href="#" class="text-white">Meetup</a></td>
					<td><a href="#" class="text-white">팔로우하기</a></td>
				</tr>
				<tr>
					<td><a onclick="location.href='JoinForm.jsp'"
						class="text-white">회원가입</a></td>
					<td><a href="#" class="text-white">그룹</a></td>
					<td><a href="#" class="text-white">정보</a></td>
					<td>
						<ul class="list-inline mb-0">
							<li class="list-inline-item mr-3"><a href="#"> <i
									class="fab fa-facebook fa-2x fa-fw"></i>
							</a></li>
							<li class="list-inline-item mr-3"><a href="#"> <i
									class="fab fa-twitter-square fa-2x fa-fw"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-instagram fa-2x fa-fw"></i>
							</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><a onclick="location.href='LoginForm.jsp'"
						class="text-white">로그인 </a></td>
					<td><a href="#" class="text-white">캘린더</a></td>
					<td><a href="#" class="text-white">Meetup Pro</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><a href="#" class="text-white">도움말 </a></td>
					<td><a href="#" class="text-white">주제</a></td>
					<td><a href="#" class="text-white">채용정보</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><p class="text-white"></p></td>
					<td><a href="#" class="text-white">도시</a></td>
					<td><a href="#" class="text-white">앱</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><p class="text-white"></p></td>
					<td><a href="#" class="text-white">Online Events</a></td>
					<td><a href="#" class="text-white">Blog</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><p class="text-white"></p></td>
					<td><p class="text-white"></p></td>
					<td><a href="#" class="text-white">접근성</a></td>
					<td><p class="text-white"></p></td>
				</tr>
			</table>

		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<script>
	var checkId = false;

	function IdCheck() {
		var yId = document.getElementById("yId");
		var idResult = document.getElementById("idResult");

		if (yId.value == "") {
			idResult.style.color = "#B4B0B0";
			idResult.innerHTML = "아이디를 입력해 주세요!";
		} else {
			location.href = "idCheck?yId=" + yId.value;
		}
	}

	function submitForm() {
		alert('아이디 중복체크를 해주세요!');
	}
</script>

</html>