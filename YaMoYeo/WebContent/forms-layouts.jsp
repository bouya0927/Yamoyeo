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

<title>Ya! MoYeo | 모임만들기</title>

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

video {
	width: 100%;
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

	<div class="container">

		<!-- Jumbotron Header -->
		<header class="jumbotron my-4">

			<div class="main-box">

				<video muted autoplay loop>
					<source src="assets/video/list_1.mp4" type="video/mp4">
				</video>
				<div class="main-text">
					<p>함께하는 즐거움</p>
					<h5>로컬 그룹에 가입하고 사람들과 좋아하는 일을 함께 하며 새로운 경험을 즐겨 보세요.</h5>
					<br> <a onclick="location.href='index.jsp'"
						class="btn btn-primary btn-lg">모임 참여</a>
				</div>

			</div>


		</header>

		<div style="text-align: center">
			<h5>추천 키워드</h5>
			<a href="#" class="btn btn-primary">IT / 개발</a> &nbsp; <a href="#"
				class="btn btn-primary">언어 교환</a> &nbsp; <a href="#"
				class="btn btn-primary">아웃도어</a> &nbsp; <a href="#"
				class="btn btn-primary">요리배우기</a> &nbsp; <a href="#"
				class="btn btn-primary">K팝 댄스커버</a>
		</div>


		<br>
		<br>
		<br>
		<br>


		<main class="content">
			<div class="container-fluid p-0">

				<h1 class="h3 mb-3">모임 만들기</h1>

				<div class="row">
					<div class="col-12 col-xl-6">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">원하는 관심사와 모집정원을 정해주세요</h5>
								<h6 class="card-subtitle text-muted">※불법적인 모임이나 비건전한 모임을
									만들면 법적제재 및 처벌을 받을 수 있습니다.</h6>
							</div>
							<div class="card-body">
								<form>
									<div class="mb-3">
										<label class="form-label">주최자 이메일</label> <input type="email"
											class="form-control" placeholder="호스트이메일을 입력해주세요.">
									</div>
									<div class="mb-3">
										<label class="form-label">온라인 모임 호스트링크</label> <input
											type="text" class="form-control"
											placeholder="접속가능한 호스트링크를 입력해주세요. ex) discode, skype, zoom, kakao 등">
									</div>
									<div class="mb-3">
										<label class="form-label">카테고리</label><br> <select
											name="zCategories" id="Categories">
											<option value="야외활동">야외활동</option>
											<option value="기술">기술</option>
											<option value="가족">가족</option>
											<option value="건강/웰빙">건강/웰빙</option>
											<option value="스포츠/피트니스">스포츠/피트니스</option>
											<option value="학습">학습</option>
											<option value="사진촬영">사진촬영</option>
											<option value="음식">음식</option>
											<option value="글쓰기">글쓰기</option>
											<option value="언어/문화">언어/문화</option>
											<option value="음악">음악</option>
											<option value="사회운동">사회운동</option>
											<option value="LGBTQ(성소수자)">LGBTQ(성소수자)</option>
											<option value="영화">영화</option>
											<option value="IT/게임">IT/게임</option>
											<option value="종교">종교</option>
											<option value="예술">예술</option>
											<option value="북클럽">북클럽</option>
											<option value="춤">춤</option>
											<option value="반려동물">반려동물</option>
											<option value="취미/공예">취미/공예</option>
											<option value="패션/스타일">패션/스타일</option>
											<option value="친목">친목</option>
											<option value="비즈니스">비즈니스</option>
										</select>
									</div>

									<div class="mb-3">
										<label class="form-label">내용</label>
										<textarea class="form-control" placeholder="모임의 내용을 적어주세요."
											rows="50"></textarea>
									</div>
									<div class="mb-3">
										<label class="form-label w-100">대표사진 넣기</label> <input
											type="file"> <small class="form-text text-muted"><br>※
											모임에 관련된 사진을 넣어주세요.<br>(ex. 주최장소,주최자 프로필 사진, 그외 관련활동 등 ).<br>그
											외 선정적사진이나 법적제재를 받을 이미지를 업로드시 법적 조취를 받을 수있습니다.</small>
									</div>

									<button type="submit" class="btn btn-primary">모임 만들기</button>
								</form>
							</div>
						</div>
					</div>





				</div>

			</div>
		</main>

	</div>
	</div>

	<script src="js/app.js"></script>

</body>

</html>