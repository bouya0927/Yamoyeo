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
		<br> <br> <br> <br> <br> <br>
		<h2>????????????</h2>
		<form action="memberJoin" method="POST" name="joinForm"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>?????????</td>
					<td><input type="text" name="yId" id="yId" value="${yId}">
						<input type="button" onclick="IdCheck()" value="????????????" class="btn btn-primary"> <br>
						<span id="idResult"></span></td>
				</tr>
				<tr>
					<td>????????????</td>
					<td><input type="password" name="yPw" id="yPw"
						onkeyup="PwCheck()"> <br> <span id="pwResult"></span></td>
				</tr>
				<tr>
					<td>??????</td>
					<td><input type="text" name="yName" id="yName"></td>
				</tr>
				<tr>
					<td>????????????</td>
					<td><input type="date" name="yBirth" id="yBirth"></td>
				</tr>

				<tr>
					<td>??????</td>
					<td>??????<input type="radio" name="yGender" id="yGender1"
						value="??????"> ??????<input type="radio" name="yGender"
						id="yGender2" value="??????"></td>
				</tr>

				<tr>
					<td>?????????</td>
					<td><input type="email" name="yEmail" id="yEmail"></td>
				</tr>

				<tr>
					<td>??????</td>
					<td><input type="file" name="yFile"></td>
				</tr>

				<tr>
					<td colspan="2"><input type="button" onclick="submitForm()"
						value="????????????" class="btn btn-primary"> <input type="reset" value="????????????" class="btn btn-primary"></td>
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
	var checkId = true;
	var yId = document.getElementById("yId");
	var idResult = document.getElementById("idResult");
	idResult.style.color = "#5B5B5B";
	idResult.innerHTML = "??????????????? ????????? ?????????!!";
	console.log(checkId);

	function IdCheck() {
		var mId = document.getElementById("yId");
		var idResult = document.getElementById("idResult");

		if (yId.value == "") {
			idResult.style.color = "#B4B0B0";
			idResult.innerHTML = "???????????? ????????? ?????????!";
		} else {
			location.href = "idCheck?mId=" + yId.value;
		}
	}

	function PwCheck() {
		var yPw = document.getElementById("yPw");
		var pwResult = document.getElementById("pwResult");

		var yPwVal = yPw.value;

		var num = yPwVal.search(/[0-9]/g);
		var eng = yPwVal.search(/[a-z]/ig);
		var spe = yPwVal.search(/[`~!@@#$%^&*|?????????'???";:???/?]/gi);

		if (yPwVal.length <= 0) {
			pwResult.innerHTML = "";
			return false;
		} else if (yPwVal.length<8 || yPwVal.length>10) {
			pwResult.style.color = "#B4B0B0";
			pwResult.innerHTML = "8~10?????? ????????? ??????????????????!";
			return false;
		} else if (yPwVal.search(/\s/) != -1) {
			pwResult.style.color = "#B4B0B0";
			pwResult.innerHTML = "??????????????? ?????? ?????? ??????????????????!";
			return false;
		} else if (num < 0 || eng < 0 || spe < 0) {
			pwResult.style.color = "#B4B0B0";
			pwResult.innerHTML = "??????, ??????, ??????????????? ???????????? ??????????????????!";
			return false;
		} else {
			pwResult.style.color = "#5B5B5B";
			pwResult.innerHTML = "??????????????????";
			return true;
		}
	}

	var yGenderArray = document.getElementsByName("yGender");

	var yName = document.getElementById("yName");
	var yBirth = document.getElementById("yBirth");
	var yEmail = document.getElementById("yEmail");

	function submitForm() {

		var yGender = "";

		for (var i = 0; i < yGenderArray.length; i++) {
			if (yGenderArray[i].checked == true) {
				yGender = yGenderArray[i].value;
			}
		}

		console.log(yGender);

		if (!checkId) {
			alert('???????????? ??????????????????!');
		} else if (!PwCheck()) {
			alert('??????????????? ??????????????????!');
		} else if (yName.value == "") {
			alert('????????? ??????????????????!');
		} else if (yBirth.value == "") {
			alert('??????????????? ??????????????????!');
		} else if (yGender == "") {
			alert('????????? ??????????????????!');
		} else if (yEmail.value == "") {
			alert('???????????? ??????????????????!');
		} else {
			var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//????????? ?????????

			if (!emailRule.test(yEmail.value)) {
				alert('???????????? ??????????????????!!');
			} else {
				joinForm.submit();
			}
		}
	}
</script>

</html>