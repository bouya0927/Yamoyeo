<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="esponsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<title>Ya! MoYeo</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/heroic-features.css" rel="stylesheet">
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link href="css/blog-post.css" rel="stylesheet">

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
<link href="css/app.css" rel="stylesheet">

<style>
	#th1{
		text-align: center;
		padding: 10px;
		width: 300px;
		height: 50px;
	}
	#th2{		
		padding: 10px;
		width: 100px;
		height: 50px;		
	}
	#th3{		
		padding: 10px;
		width: 300px;
		height: 50px;		
	}
	#th4{		
		text-align: center;		
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
		<hr>
		<!-- Jumbotron Header -->
		<header>
			<table id="th4">
				<tr>
					<td rowspan="7">
						<img class="card-img-top" src="assets/img/campe.jpg" alt="" height="200px">
					</td>
					<td>
						<a>제목</a>
					</td>
				</tr>
				<tr>
					
					<td>
						<a>장소</a>
					</td>
				</tr>
				<tr>
					
					<td>
						<a>회원수/공개설정</a>
					</td>
				</tr>
				<tr>
					
					<td>
						<a>주최자</a>
					</td>
				</tr>
				<tr>					
					<td>						
					</td>
				</tr>
				<tr>					
					<td>						
					</td>
				</tr>
				<tr>
					
					<td>
						<a>공유</a>
					</td>
				</tr>
			</table>
		<hr>
			<table id="th4">
				<tr >
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">정보</a>
					</td>
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">이벤트</a>
					</td>
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">회원</a>
					</td>
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">사진</a>
					</td>
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">토론</a>
					</td>
					<td id="th2">
						<a onclick="location.href='LoginForm.jsp'">기타</a>
					</td>
					<td id="th3">
						<a onclick="location.href='LoginForm.jsp'"class="btn btn-primary btn-lg">이그룹에가입하기</a>
					</td>
				</tr>
				
			</table>
		</header>	
		<!-- Page Features -->
		<h3>활동 계획</h3>
		<h5>관심 있는 주제별로 그룹을 찾아보세요.</h5>
		<br>
		 <div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
          <div class="media-body">
            <h5 class="mt-0">Commenter Name</h5>
          </div>
        </div>

		<main class="content">
			<div class="container-fluid p-0">

				<h1 class="h3 mb-3">Feather</h1>
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-12 col-md-6 col-lg-3">
								<div class="mb-2">
									<i class="align-middle mr-2" data-feather="activity"></i> <span class="align-middle">activity</span>
								</div>
							</div>
						</div>
					</div>
				</div>		
			</div>
		</main>

		<div class="row text-center">
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/campe.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">야외활동</h4>
						</div>
						<div class="card-footer">
							<a href="camp.jsp" class="btn btn-primary">야외활동</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/engineer.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">기술</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">기술</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/family.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">가족</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">가족</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/health.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">건강/웰빙</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">건강/웰빙</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/sports.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">스포츠/피트니스</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">스포츠/피트니스</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/learning.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">학습</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">학습</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/photo.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">사진촬영</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">사진촬영</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/food.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">음식</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">음식</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/writing.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">글쓰기</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">글쓰기</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/culture.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">언어/문화</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">언어/문화</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/music.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">음악</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">음악</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/movement.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">사회운동</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">사회운동</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/lgbtq.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">LGBTQ(성소수자)</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">LGBTQ(성소수자)</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/movie.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">영화</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">영화</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/science.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">공상과학/게임</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">공상과학/게임</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/belief.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">종교</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">종교</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/art.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">예술</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">예술</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/book.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">북클럽</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">북클럽</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/dance.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">춤</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">춤</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/pet.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">반려동물</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">반려동물</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/hobby.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">취미/공예</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">취미/공예</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/fashion.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">패션/스타일</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">패션/스타일</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/fellowship.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">친목</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">친목</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="assets/img/business.jpg" alt=""
							height="200px">
						<div class="card-body">
							<h4 class="card-title">비즈니스</h4>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">비즈니스</a>
						</div>
					</div>
				</div>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->

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
								<tr id="th1">
									<td id="th1"><a href="#" class="text-white">내 계정</a></td>
									<td id="th1"><a href="#" class="text-white">탐색</a></td>
									<td id="th1"><a href="#" class="text-white">Meetup</a></td>
									<td id="th1"><a href="#" class="text-white">팔로우하기</a></td>
								</tr>
								<tr id="th1">
									<td id="th1"><a onclick="location.href='JoinForm.jsp'"
										class="text-white">회원가입</a></td>
									<td id="th1"><a href="#" class="text-white">그룹</a></td>
									<td id="th1"><a href="#" class="text-white">정보</a></td>
									<td id="th1">
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
								<tr id="th1">
									<td id="th1"><a onclick="location.href='LoginForm.jsp'"
										class="text-white">로그인 </a></td>
									<td id="th1"><a href="#" class="text-white">캘린더</a></td>
									<td id="th1"><a href="#" class="text-white">Meetup Pro</a></td>
									<td id="th1"><p class="text-white"></p></td>
								</tr>
								<tr id="th1">
									<td id="th1"><a href="#" class="text-white">도움말 </a></td>
									<td id="th1"><a href="#" class="text-white">주제</a></td>
									<td id="th1"><a href="#" class="text-white">채용정보</a></td>
									<td id="th1"><p class="text-white"></p></td>
								</tr>
								<tr id="th1">
									<td id="th1"><p class="text-white"></p></td>
									<td id="th1"><a href="#" class="text-white">도시</a></td>
									<td id="th1"><a href="#" class="text-white">앱</a></td>
									<td id="th1"><p class="text-white"></p></td>
								</tr>
								<tr id="th1">
									<td id="th1"><p class="text-white"></p></td>
									<td id="th1"><a href="#" class="text-white">Online
											Events</a></td>
									<td id="th1"><a href="#" class="text-white">Blog</a></td>
									<td id="th1"><p class="text-white"></p></td>
								</tr>
								<tr id="th1">
									<td id="th1"><p class="text-white"></p></td>
									<td id="th1"><p class="text-white"></p></td>
									<td id="th1"><a href="#" class="text-white">접근성</a></td>
									<td id="th1"><p class="text-white"></p></td>
								</tr>
							</table>

						</div>
						<!-- /.container -->
					</footer>

					<!-- Bootstrap core JavaScript -->
					<script src="vendor/jquery/jquery.min.js"></script>
					<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
					<script src="js/app.js"></script>

</body>

<script>
	/* 회원가입 페이지 이동 : Join()함수 */
	function Join() {
		location.href = "JoinForm.jsp";
	}

	/* 로그인 페이지 이동 : Login()함수 */
	function Login() {
		location.href = "LoginForm.jsp";
	}

	// 로그인 성공페이지로 이동 : LoginSuccess() 함수
	function LoginSuccess() {
		location.href = "LoginSuccess.jsp";
	}

	// 글쓰기 페이지로 이동 : Write()함수
	function Write() {
		location.href = "WriteForm.jsp";
	}

	// 글목록 페이지로 이동 : BList()함수
	function BList() {
		location.href = "BList.jsp";
	}
</script>

</html>