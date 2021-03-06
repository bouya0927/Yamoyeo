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

<title>Ya! MoYeo | 모임</title>

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
	color: #000000;
	text-align: left;
}

.main-text h5 {
	margin-left: 10px;
	color: #000000;
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

		<!-- Page Content -->
		<div class="container">
			<br> <br> <br> <br>
			<c:choose>
			<c:when test="${sessionScope.loginId != null}">
			<div>
				<section class="section">
					<div>
						<h3 class= "text"><span>생성된 이벤트</span></h3>
						<div class= "flex">
							<div class= "flex-item">
								<span>관심있는 모임에 참여해보세요.</span>
							</div>
						</div>
						
					</div>
				</section>
			</div>
	

			<div style="text-align: center">
				<table style="text-align: center">

					<thead>
						<tr>
							<th style="width: 8%">글번호</th>
							<th style="width: 35%">제목</th>
							<th style="width: 20%">작성자</th>
							<th style="width: 19%">작성일</th>
							<th style="width: 8%">조회수</th>
							<th style="width: 8%">삭제</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="board" items="${bList}">
							<tr>
								<td>${board.zNum}</td>
								<td><a
									href="boardView?zNum=${board.zNum}&page=${paging.page}">${board.zTitle}</a></td>
								<td>${board.zId}</td>
								<td>${board.zDate}</td>
								<td>${board.zHits}</td>
								<td><a class="nav-link" onclick="boardDelete()">Del</a></td>
							</tr>

							<input type="hidden" id="zId" value="${board.zId}">
							<input type="hidden" id="zNum" value="${board.zNum}">
							<input type="hidden" id="loginId" value="${sessionScope.loginId}">
						</c:forEach>
						<tr>
							<td colspan="6" style="text-align: right"><select
								name="limit" id="limit" onchange="funSel()">
									<option>게시글 갯수</option>
									<option value="3">3개씩</option>
									<option value="5">5개씩</option>
									<option value="10">10개씩</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				</c:when>
				<c:otherwise>
					<br><br><h1>로그인 후 사용해주세요!</h1>
					<button onclick="location.href='LoginForm.jsp'" class="btn btn-primary">로그인 페이지로</button>
				</c:otherwise>
				</c:choose>
				<!-- 페이징 처리 -->

				<!-- [이전] 에 대한 페이징 처리 -->
				<ul class="pagination justify-content-center mb-4">
					<c:if test="${paging.page<=1}">&larr; 이전&nbsp;</c:if>
					<c:if test="${paging.page>1}">
						<a href="boardList?page=${paging.page-1}&limit=${paging.limit}">&larr;
							이전</a>&nbsp;
								</c:if>

					<!-- 페이지 숫자에 대한 페이징 처리 -->
					<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
						var="i" step="1">
						<c:choose>

							<c:when test="${i eq paging.page}">
											${i}
										</c:when>

							<c:otherwise>
								<a href="boardList?page=${i}&limit=${paging.limit}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<!-- [다음] 에 대한 페이징 처리 -->
					<c:if test="${paging.page>=paging.maxPage}">다음 &rarr;&nbsp;</c:if>
					<c:if test="${paging.page<paging.maxPage}">
						<a href="boardList?page=${paging.page+1}&limit=${paging.limit}">다음
							&rarr;</a>&nbsp;
								</c:if>
				</ul>
			</div>
			<!-- 페이징처리 끝 -->

		</div>
		<br> <br> <br> <br> <br> <br>

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
	function boardDelete() {
		var loginId = document.getElementById("loginId").value;
		var zId = document.getElementById("zId").value;
		var zNum = document.getElementById("zNum").value;

		console.log("loginId : " + loginId);
		console.log("zId : " + zId);

		if (loginId != zId && loginId != 'admin') {
			alert('본인이 작성한 글이 아닙니다!');
		} else {
			location.href = "boardDelete?zNum=" + zNum;
		}
	}
	function funSel() {
		var limit = document.getElementById("limit").value;
		location.href = "boardList?limit=" + limit;
	}
</script>

</html>