<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="esponsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords"
	content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<title>Ya! MoYeo</title>

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

<style type="text/css">
#th1 {
	text-align: center;
	padding: 10px;
	width: 300px;
	height: 50px;
}

#th2 {
	padding: 10px;
	width: 100px;
	height: 50px;
}

#th3 {
	padding: 10px;
	width: 300px;
	height: 50px;
}

#th4 {
	text-align: center;
}

#ta{
	margin : auto;   
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
							<h3>????????? ??????</h3>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberList'">????????????</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberLogout'">????????????</a></li>
						</c:when>

						<c:when test="${sessionScope.loginId != null}">
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberView?yId=${sessionScope.loginId}'">???
									??????</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='memberLogout'">????????????</a></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='JoinForm.jsp'">????????????</a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='LoginForm.jsp'">?????????</a></li>
						</c:otherwise>

					</c:choose>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='BWrite.jsp'">?????????</a></li>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='boardList'">??????</a></li>

				</ul>
			</div>
		</div>
	</nav>


	<!-- Page Content -->
	<div class="container">
		<hr>
		<!-- Jumbotron Header -->
		<header>
			<table id="ta">
				<tr>
					<td rowspan="8"><img class="card-img" src="fileUpload/${board.zFile}" alt="???????????? ??????" width="130" height="100"></td>										
					<td><a>??????: ${board.zTitle}</a></td>
				</tr>
				
				<tr>															
					<td>
					<i class="align-middle mr-2" data-feather="map-pin"></i><a>??????</a>
					</td>
				</tr>
				<tr>														
					<td>
					<i class="align-middle mr-2" data-feather="users"></i><a>?????????/????????????</a>
					</td>
				</tr>
				<tr>										
					<td>
					<i class="align-middle mr-2" data-feather="user"></i><a>?????????:</a>
					</td>
				</tr>
				<tr>										
					<td></td>
				</tr>
				<tr>										
					<td></td>
				</tr>
				<tr>										
					<td><a>??????:</a> <i class="align-middle mr-2"
						data-feather="facebook"></i> <i class="align-middle mr-2"
						data-feather="twitter"></i> <i class="align-middle mr-2"
						data-feather="instagram"></i></td>
				</tr>
			</table>
		</header>
		<hr>
		<table id="th4">
			<tr>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">??????</a>
				</td>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">?????????</a>
				</td>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">??????</a>
				</td>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">??????</a>
				</td>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">??????</a>
				</td>
				<td id="th2"><a onclick="location.href='LoginForm.jsp'">??????</a>
				</td>
				<td id="th3"><a onclick="location.href='LoginForm.jsp'"
					class="btn btn-primary btn-lg">????????????????????????</a></td>
			</tr>
		</table>

		<!-- Page Features -->
		<table width="100%" style="border: none">
			<tr>
				<td>
					<h3>?????? ??????</h3>
				</td>
				<td style="text-align: left">
					<h3>?????????</h3>
				</td>
			</tr>
			<tr>
				<td rowspan="3">
					<p>${board.zContents}</p>
				</td>
				<td style="text-align: left"><img
					class="d-flex mr-3 rounded-circle" src="assets/img/health.jpg"
					alt="" height="50px"> <a>??????:</a></td>
			</tr>
			<tr>

				<td style="text-align: left">
					<h3>??????</h3>
				</td>
			</tr>
			<tr>

				<td style="text-align: left"><img
					class="d-flex mr-3 rounded-circle" src="assets/img/health.jpg"
					alt="" height="50px"></td>
			</tr>
		</table>
		<br>

		<h1 class="h3 mb-3">????????? ?????????</h1>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/health.jpg" alt=""
							width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/sports.jpg" alt=""
							width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<h1 class="h3 mb-3">?????? ?????????</h1>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/learning.jpg"
							alt="" width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/photo.jpg" alt=""
							width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<h1 class="h3 mb-3">??????</h1>

		<table>
			<tr>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>

			</tr>
			<tr>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>
				<td><img class="rounded mr-2 mb-2"
					src="assets/img/learning.jpg" alt="" width="150" height="150">
				</td>
			</tr>

		</table>

		<h1 class="h3 mb-3">??????</h1>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/learning.jpg"
							alt="" width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/photo.jpg" alt=""
							width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<main class="content">
			<div class="container-fluid p-0">
				<div class="col-lg-10 col-md-25 mb-10">
					<div class="card-header">
						<h3 class="card-title">Feather Icons</h3>
						<h6 class="card-subtitle text-muted">Simply beautiful open
							source icons</h6>
						<img class="rounded mr-2 mb-2" src="assets/img/photo.jpg" alt=""
							width="200" height="100">
						<div class="card-body">
							<div class="row">
								<div class="card-footer">
									<div class="row">
										<i class="align-middle mr-2" data-feather="activity"></i> <span
											class="align-middle">activity</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>

		<h1>?????? ??????</h1>
		<div style="text-align: center">
			<a href="#" class="btn btn-primary">????????? ??? ??????</a> &nbsp; <a href="#"
				class="btn btn-primary">?????? ??????</a> &nbsp; <a href="#"
				class="btn btn-primary">?????? ?????? ??????</a> &nbsp; <a href="#"
				class="btn btn-primary">?????? ?????????</a> &nbsp; <a href="#"
				class="btn btn-primary">K??? ????????????</a>
		</div>
		<hr>

		<h1>??? ?????? ????????? ?????????</h1>

		<table>
			<tr>
				<td>
					<main class="content">
						<div class="container-fluid p-0">
							<div class="col-lg-10 col-md-25 mb-10">
								<div class="card-header">
									<h3 class="card-title">Feather Icons</h3>
									<h6 class="card-subtitle text-muted">Simply beautiful open
										source icons</h6>
									<img class="rounded mr-2 mb-2" src="assets/img/music.jpg"
										alt="" width="200" height="100">
									<div class="card-body">
										<div class="row">
											<div class="card-footer">
												<div class="row">
													<a href="#" class="btn btn-primary">??????</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
				</td>
				<td>
					<main class="content">
						<div class="container-fluid p-0">
							<div class="col-lg-10 col-md-25 mb-10">
								<div class="card-header">
									<h3 class="card-title">Feather Icons</h3>
									<h6 class="card-subtitle text-muted">Simply beautiful open
										source icons</h6>
									<img class="rounded mr-2 mb-2" src="assets/img/movement.jpg"
										alt="" width="200" height="100">
									<div class="card-body">
										<div class="row">
											<div class="card-footer">
												<div class="row">
													<a href="#" class="btn btn-primary">????????????</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
				</td>
				<td>
					<main class="content">
						<div class="container-fluid p-0">
							<div class="col-lg-10 col-md-25 mb-10">
								<div class="card-header">
									<h3 class="card-title">Feather Icons</h3>
									<h6 class="card-subtitle text-muted">Simply beautiful open
										source icons</h6>
									<img class="rounded mr-2 mb-2" src="assets/img/movie.jpg"
										alt="" width="200" height="100">
									<div class="card-body">
										<div class="row">
											<div class="card-footer">
												<div class="row">
													<a href="#" class="btn btn-primary">??????</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
				</td>
			</tr>
		</table>
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<h3 class="text-white">
				<a href="#">??? ?????? ????????????</a>
			</h3>
			<hr>
		</div>

		<div class="container">
			<table>
				<tr id="th1">
					<td id="th1"><a href="#" class="text-white">??? ??????</a></td>
					<td id="th1"><a href="#" class="text-white">??????</a></td>
					<td id="th1"><a href="#" class="text-white">Meetup</a></td>
					<td id="th1"><a href="#" class="text-white">???????????????</a></td>
				</tr>
				<tr id="th1">
					<td id="th1"><a onclick="location.href='JoinForm.jsp'"
						class="text-white">????????????</a></td>
					<td id="th1"><a href="#" class="text-white">??????</a></td>
					<td id="th1"><a href="#" class="text-white">??????</a></td>
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
						class="text-white">????????? </a></td>
					<td id="th1"><a href="#" class="text-white">?????????</a></td>
					<td id="th1"><a href="#" class="text-white">Meetup Pro</a></td>
					<td id="th1"><p class="text-white"></p></td>
				</tr>
				<tr id="th1">
					<td id="th1"><a href="#" class="text-white">????????? </a></td>
					<td id="th1"><a href="#" class="text-white">??????</a></td>
					<td id="th1"><a href="#" class="text-white">????????????</a></td>
					<td id="th1"><p class="text-white"></p></td>
				</tr>
				<tr id="th1">
					<td id="th1"><p class="text-white"></p></td>
					<td id="th1"><a href="#" class="text-white">??????</a></td>
					<td id="th1"><a href="#" class="text-white">???</a></td>
					<td id="th1"><p class="text-white"></p></td>
				</tr>
				<tr id="th1">
					<td id="th1"><p class="text-white"></p></td>
					<td id="th1"><a href="#" class="text-white">Online Events</a></td>
					<td id="th1"><a href="#" class="text-white">Blog</a></td>
					<td id="th1"><p class="text-white"></p></td>
				</tr>
				<tr id="th1">
					<td id="th1"><p class="text-white"></p></td>
					<td id="th1"><p class="text-white"></p></td>
					<td id="th1"><a href="#" class="text-white">?????????</a></td>
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
	/* ???????????? ????????? ?????? : Join()?????? */
	function Join() {
		location.href = "JoinForm.jsp";
	}

	/* ????????? ????????? ?????? : Login()?????? */
	function Login() {
		location.href = "LoginForm.jsp";
	}

	// ????????? ?????????????????? ?????? : LoginSuccess() ??????
	function LoginSuccess() {
		location.href = "LoginSuccess.jsp";
	}

	// ????????? ???????????? ?????? : Write()??????
	function Write() {
		location.href = "WriteForm.jsp";
	}

	// ????????? ???????????? ?????? : BList()??????
	function BList() {
		location.href = "BList.jsp";
	}
</script>

</html>