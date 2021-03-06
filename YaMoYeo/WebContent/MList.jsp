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
.main-text h5{
	
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
								onclick="location.href='memberLogout'"><strong>????????????</strong></a></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='JoinForm.jsp'"><strong>????????????</strong></a></li>
							<li class="nav-item"><a class="nav-link"
								onclick="location.href='LoginForm.jsp'"><strong>?????????</strong></a></li>
						</c:otherwise>

					</c:choose>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='BWrite.jsp'"><strong>???????????????</strong></a></li>
					<li class="nav-item"><a class="nav-link"
						onclick="location.href='boardList'">??????</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<div class="div1">
			<table class="table" style="text-align: center">

				<thead>
					<tr class="noborder">
						<td class="noborder" colspan="5">
							<div style="text-align: right">
								<select name="limit" id="limit" onchange="funSel()">
									<option>????????? ??????</option>
									<option value="3">3??????</option>
									<option value="5">5??????</option>
									<option value="10">10??????</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th>??????</th>
						<th>??????</th>
						<th>?????????</th>
						<th>????????????</th>
						<th>????????????</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="member" items="${yList}" varStatus="num">
						<tr>
							<td>${num.count}</td>
							<td>${member.yName}</td>
							<td><a href="memberView?yId=${member.yId}">${member.yId}</a></td>
							<td>${member.yBirth}</td>
							<td><a href="memberDelete?yId=${member.yId}">??????</a></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</div>

		<!-- ????????? ?????? -->
		<div style="text-align: center">
			<!-- [??????] ??? ?????? ????????? ?????? -->
			<c:if test="${paging.page<=1}">[??????]&nbsp;</c:if>
			<c:if test="${paging.page>1}">
				<a href="memberList?page=${paging.page-1}&limit=${paging.limit}">[??????]</a>&nbsp;
		</c:if>
			<!-- ????????? ????????? ?????? ????????? ?????? -->
			<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
				var="i" step="1">
				<c:choose>
					<c:when test="${i eq paging.page}">
					${i}
				</c:when>
					<c:otherwise>
						<a href="memberList?page=${i}&limit=${paging.limit}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- [??????] ??? ?????? ????????? ?????? -->
			<c:if test="${paging.page>=paging.maxPage}">[??????]&nbsp;</c:if>
			<c:if test="${paging.page<paging.maxPage}">
				<a href="memberList?page=${paging.page+1}&limit=${paging.limit}">[??????]</a>&nbsp;
		</c:if>
		</div>
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
				<a href="#">??? ?????? ????????????</a>
			</h3>
			<hr>
		</div>

		<div class="container">
			<table>
				<tr>
					<td><a href="#" class="text-white">??? ??????</a></td>
					<td><a href="#" class="text-white">??????</a></td>
					<td><a href="#" class="text-white">Meetup</a></td>
					<td><a href="#" class="text-white">???????????????</a></td>
				</tr>
				<tr>
					<td><a onclick="location.href='JoinForm.jsp'"
						class="text-white">????????????</a></td>
					<td><a href="#" class="text-white">??????</a></td>
					<td><a href="#" class="text-white">??????</a></td>
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
						class="text-white">????????? </a></td>
					<td><a href="#" class="text-white">?????????</a></td>
					<td><a href="#" class="text-white">Meetup Pro</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><a href="#" class="text-white">????????? </a></td>
					<td><a href="#" class="text-white">??????</a></td>
					<td><a href="#" class="text-white">????????????</a></td>
					<td><p class="text-white"></p></td>
				</tr>
				<tr>
					<td><p class="text-white"></p></td>
					<td><a href="#" class="text-white">??????</a></td>
					<td><a href="#" class="text-white">???</a></td>
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
					<td><a href="#" class="text-white">?????????</a></td>
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
	function funSel() {
		var limit = document.getElementById("limit").value;
		location.href = "memberList?limit=" + limit;
	}
</script>

</html>