<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BUSTIVAL</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<!-- Bootstrap CSS -->

<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://kit.fontawesome.com/fdb678099a.js"
	crossorigin="anonymous"></script>


</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary" role="status"></div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar start -->
	<div class="container-fluid fixed-top">
		<div class="container px-0">
			<nav class="navbar navbar-light bg-white navbar-expand-xl">
				<a href="gomain.do" class="navbar-brand"> <img
					src="./img/logo2.png" alt="" class="logoimg">
				</a>
				<button class="navbar-toggler py-2 px-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars text-primary"></span>
				</button>
				<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					<div class="navbar-nav mx-auto">
						<div class="nav-item dropdown">
							<a href="goenroll.do" class="nav-item nav-link dropdown-toggle"
								data-bs-toggle="dropdown">BUSTIVAL</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="goenroll.do" class="dropdown-item">신청게시판</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="boardList.do?value=1&page=1" class="nav-item nav-link dropdown-toggle"
								data-bs-toggle="dropdown">BOARD</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="boardList.do?value=1&page=1" class="dropdown-item">자유게시판</a>
								<a href="boardList.do?value=2&page=1" class="dropdown-item">질문게시판</a>
								<a href="boardList.do?value=3&page=1" class="dropdown-item">후기게시판</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="qna.jsp" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">INFO CENTER</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="goqna.do" class="dropdown-item">Q&A</a> <a
									href="noticeList.do?value=4&page=1" class="dropdown-item">공지사항</a>
								<a href="gorefundPolicy.do" class="dropdown-item">환불규정</a>
							</div>
						</div>
					</div>
					<div class="d-flex m-3 me-0">
						<c:if test="${member == null }">
							<!-- 로그인X 시 나타날 회원가입 버튼 -->
							<a href="gosignin.do" class="my-auto"> <i
								class="fa-solid fa-pen-nib fa-2xl"></i>
							</a>
							<!-- 로그인X 시 나타날 로그인 버튼 -->
							<a href="gologin.do" class="my-auto"> <i
								class="fas fa-user fa-2x"></i>
							</a>
						</c:if>
						<!--로그인 시 나타날 마이페이지 버튼-->
						<c:if test="${member != null }">
							<a href="myPage.do" class="my-auto"> <i
								class="fas fa-user fa-2x"></i>
							</a>
						</c:if>

					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->
<body class="signIn">
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				
				<c:if test="${loginPwChecking != 'Y'}">
				<form action="joinPwCheck.do" class="validation-form" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이메일</label> <input type="text"
								class="form-control" id="name" name="email" placeholder=""
								value="" required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">닉네임</label> <input type="text"
								class="form-control" id="nickname" name="nickname"
								placeholder="" value="" required>
						</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" id="pw" name="pw" placeholder="" required>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호 확인</label> <input type="password"
							class="form-control" id="pw_check" name="pw_check" placeholder=""
							required>
					</div>

					<div class="mb-3">
						<label for="phone">핸드폰번호</label> <input type="text"
							class="form-control" id="phonenumber" name="phonenumber"
							placeholder="010-1234-5678" required>
					</div>


					<div class="mb-3">
						<label for="address">주소</label> <input list="Address_option"
							class="inputset-input form-control" id="address" name="address">
						<datalist id="Address_option">
							<option value="서울특별시"></option>
							<option value="인천광역시"></option>
							<option value="부산광역시"></option>
							<option value="대전광역시"></option>
							<option value="대구광역시"></option>
							<option value="광주광역시"></option>
							<option value="울산광역시"></option>
						</datalist>
					</div>
					</c:if>

					<c:if test="${loginPwChecking == 'Y'}">
						<script type="text/javascript">
							alert("비밀번호를 확인해주세요");
						</script>
						<%
						session.setAttribute("loginPwChecking", "N");
						%>
						<form action="joinPwCheck.do" class="validation-form" novalidate>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="name">이메일</label> <input type="text"
										class="form-control" id="name" name="email" placeholder=""
										required value="${loginPwCheckingUserInfo.email}">
								</div>
								<div class="col-md-6 mb-3">
									<label for="nickname">닉네임</label> <input type="text"
										class="form-control" id="nickname" name="nickname"
										placeholder="" required value="${loginPwCheckingUserInfo.nick}">
								</div>
							</div>

							<div class="mb-3">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" id="pw" name="pw" placeholder="" required value="${loginPwCheckingUserInfo.pw}">
							</div>

							<div class="mb-3">
								<label for="password">비밀번호 확인</label> <input type="password"
									class="form-control" id="pw_check" name="pw_check"
									placeholder="" required value="${loginPwCheckingUserInfo.newPw}">
							</div>

							<div class="mb-3">
								<label for="phone">핸드폰번호</label> <input type="text"
									class="form-control" id="phonenumber" name="phonenumber"
									placeholder="010-1234-5678" required value="${loginPwCheckingUserInfo.phone}">
							</div>


							<div class="mb-3">
								<label for="address">주소</label> <input list="Address_option"
									class="inputset-input form-control" id="address" name="address" value="${loginPwCheckingUserInfo.address}">
								<datalist id="Address_option">
									<option value="서울특별시"></option>
									<option value="인천광역시"></option>
									<option value="부산광역시"></option>
									<option value="대전광역시"></option>
									<option value="대구광역시"></option>
									<option value="광주광역시"></option>
									<option value="울산광역시"></option>
								</datalist>
							</div>
					</c:if>

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block right-align"
						type="submit">가입 완료</button>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div>
		<div class="signdriver">운전자 회원가입을 하시겠습니까?</div>
		<div class="signdriver">
			<a href="#">운전자 회원가입</a>
		</div>
	</div>


	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
		<div class="pb-4 mb-4 logo"
			style="border-bottom: 1px solid rgba(226, 175, 24, 0.5);">
			<img id="footerLogo" src="./img/ft_logo.png" alt="">
		</div>
		<!-- Footer End -->

		<!-- Copyright Start -->
		<div class="container">
			<span class="text-light"><a href="#"><i
					class="fas fa-copyright text-light me-2"></i>BUSTIVAL</a></span> <br> <span><a
				href="#">깃허브 주소</a></span> <br> <a href="https://smhrd.or.kr/">스마트인재개발원</a>
			<!--깃허브 주소 넣기.-->
		</div>
		<!-- Copyright End -->





		<!-- JavaScript Libraries -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="lib/easing/easing.min.js"></script>
		<script src="lib/waypoints/waypoints.min.js"></script>
		<script src="lib/lightbox/js/lightbox.min.js"></script>
		<script src="lib/owlcarousel/owl.carousel.min.js"></script>


		<!-- Template Javascript -->
		<script src="js/main.js"></script>
</body>

</html>