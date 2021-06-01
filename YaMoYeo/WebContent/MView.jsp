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

<title>Ya! MoYeo | 마이페이지</title>

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
	text-align: left;
	padding: 10px;
	width: 300px;
	height: 50px;
}

video {
	max-width: 100%;
	display: block;
	margin: 10px auto;
}

.main-text {
	position: absolute;
	top: 50%;
	width: 100%;
	margin-left: 10px;
}

.main-text p {
	margin-top: -24px;
	font-size: 50px;
	color: #ffffff;
	text-align: left;
}

.main-text h5 {
	margin-left: 10px;
	color: #ffffff;
}

.main-box {
	width: 100%;
	height: 500px;
	overflow: hidden;
	margin: 0px auto;
	position: relative;
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
								onclick="location.href='memberLogout'"><strong>로그아웃</strong></a></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='JoinForm.jsp'"><strong>회원가입</strong></a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='LoginForm.jsp'"><strong>로그인</strong></a></li>
						</c:otherwise>

					</c:choose>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='BWrite.jsp'"><strong>모임만들기</strong></a></li>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='boardList'">목록</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<br> <br> <br> <br> <br> <br>

		<h2>마이페이지</h2>
		<main class="content">
			<div class="container-fluid p-0">
				<div class="row">
					<div class="col-12 col-xl-6">
						<div class="card">
							<div class="card-header">
								<label class="form-control"><h5>${member.yId}&nbsp;&nbsp;의 프로필</h5></label>
								<table>
									<tr>
										<td rowspan="6"><img src="fileUpload/${member.yFile}"
											width="200px"><br></td>

										<td><label class="form-label"> <strong>아&nbsp;이&nbsp;디:</strong>
										</label></td>
										<td>${member.yId}</td>

									</tr>
									<tr>
										<td><label class="form-label"> <strong>비밀번호
													:</strong>
										</label></td>
										<td>${member.yPw}</td>
									</tr>
									<tr>
										<td><label class="form-label"> <strong>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름:</strong>
										</label></td>
										<td>${member.yName}</td>
									</tr>

									<tr>
										<td><label class="form-label"> <strong>생년월일
													:</strong>
										</label></td>
										<td>${member.yBirth}</td>
									</tr>

									<tr>


										<td><label class="form-label"> <strong>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별
													:</strong>
										</label></td>

										<td>${member.yGender}</td>


									</tr>
									<tr>
										<td><label class="form-label"> <strong>이&nbsp;메&nbsp;일
													:</strong>
										</label></td>
										<td>${member.yEmail}</td>
									</tr>

								</table>
							</div>




						</div>
					</div>
				</div>

			</div>
		</main>
		<table>
			<tr>
				<td colspan="2">
					<button
						onclick="location.href='memberModifyForm?yId=${member.yId}'"
						class="btn btn-primary">수정하기</button> <c:if
						test="${sessionScope.loginId eq member.yId}">
						<button onclick="location.href='memberDelete?yId=${member.yId}'"
							class="btn btn-primary">탈퇴하기</button>
					</c:if>

				</td>
			</tr>
		</table>

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

</html>