<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
							<a href="#" class="nav-item nav-link dropdown-toggle"
								data-bs-toggle="dropdown">BUSTIVAL</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="#" class="dropdown-item">신청게시판</a> <a href="#"
									class="dropdown-item">요청게시판</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="#" class="nav-item nav-link dropdown-toggle"
								data-bs-toggle="dropdown">CONCERT</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="#" class="dropdown-item">발라드</a> <a href="#"
									class="dropdown-item">아이돌</a> <a href="#" class="dropdown-item">트로트</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="#" class="nav-item nav-link dropdown-toggle"
								data-bs-toggle="dropdown">BOARD</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="board.jsp" class="dropdown-item">자유게시판</a> <a
									href="board.jsp" class="dropdown-item">질문게시판</a> <a
									href="board.jsp" class="dropdown-item">후기게시판</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="qna.jsp" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">INFO CENTER</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="qna.jsp" class="dropdown-item">Q&A</a> <a
									href="announcement.jsp" class="dropdown-item">공지사항</a> <a
									href="refund_Policy.jsp" class="dropdown-item">환불규정</a>
							</div>
						</div>
					</div>
					<div class="d-flex m-3 me-0">
						<!-- 로그인X 시 나타날 회원가입 버튼 -->
						<c:if test="${member == null }">
							<a href="signin.jsp" class="my-auto"> <i
								class="fa-solid fa-pen-nib fa-2xl"></i>
							</a>
							<!-- 로그인X 시 나타날 로그인 버튼 -->
							<a href="login.jsp" class="my-auto"> <i
								class="fas fa-user fa-2x"></i>
							</a>
						</c:if>
						<!--로그인 시 나타날 마이페이지 버튼-->
						<c:if test="${member != null }">
							<a href="myPage.jsp" class="my-auto"> <i
								class="fas fa-user fa-2x"></i>
							</a>
						</c:if>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->

	<!-- Concert infomation 콘서트 정보 -->
	<div class="container-fluid contact py-5">
		<div class="container py-5">
			<!-- 전체 모양 지정 -->
			<div class="p-5 bg-light rounded custom-wide">
				<div class="row g-4">
					<!-- 콘서트 이름  -->
					<div class="col-12">
						<div class="text-center mx-auto" style="max-width: 700px;">
							<h1 class="text-primary">콘서트 이름 - 지역</h1>
						</div>
					</div>
					<div class="reg-flex-container">
						<div class="map-in">
							<!-- 출발지 -->
							<h4 class="map-m">출발지</h4>
							<a
								href="https://map.kakao.com/?urlX=472510&urlY=462241&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false"
								target="_blank"> <img
								src="https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=472510&MY=462241&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo">
							</a>
							<!-- 도착지(행사장소) -->
							<h4 class="map-m">도착지</h4>
							<a
								href="https://map.kakao.com/?urlX=472510&urlY=462241&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false"
								target="_blank"> <img
								src="https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=472510&MY=462241&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo">
							</a>
						</div>
						<div class="regInfo">
							<table class="table">
								<tbody>
									<!-- 행사 이름 / EVENT_NAME-->
									<tr>
										<td class="td-one"><h6>콘서트 이름</h6></td>
										<td class="td-two">
											<div class="EVENT_NAME">
												<h6>노엘 갤러거 하이 플라잉 버즈-광주</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>출발 지역</h6></td>
										<td class="td-two">
											<div class="START_RG">
												<h6>출발 지역</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>행사일</h6></td>
										<td class="td-two">
											<div class="EVENT_DATE">
												<h6>행사 날짜</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>모집 시작일</h6></td>
										<td class="td-two">
											<div class="START_DATE">
												<h6>등록일</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>모집 마감일</h6></td>
										<td class="td-two">
											<div class="END_DATE">
												<h6>마감일</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>탑승일</h6></td>
										<td class="td-two">
											<div class="RIDING_DATE">
												<h6>탑승일</h6>
											</div>
										</td>
									</tr>
									<tr>
										<td class="td-one"><h6>셔틀 가격</h6></td>
										<td class="td-two">
											<div class="PRICE">
												<h6>가격</h6>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<button class="btn btn-one btn-lg btn-block btn-reg" type="button">
							요청하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Concert infomation End -->


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