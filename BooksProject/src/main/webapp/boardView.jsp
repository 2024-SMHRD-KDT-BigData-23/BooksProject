<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BUSTIVAL</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/fdb678099a.js"
	crossorigin="anonymous"></script>
</head>

<body>

	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary" role="status"></div>
	</div>

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
							<a href="boardList.do?value=1&page=1"
								class="nav-item nav-link dropdown-toggle"
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
<body class="board">
	<div class="board_wrap">
		<div class="board_title">
			<c:if test="${boardDetail.b_category == '1'}">
				<strong>자유게시판</strong>
			</c:if>
			<c:if test="${boardDetail.b_category == '2'}">
				<strong>질문게시판</strong>
			</c:if>
			<c:if test="${boardDetail.b_category == '3'}">
				<strong>후기게시판</strong>
			</c:if>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">${boardDetail.b_title}</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>1</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>${boardDetail.nick}</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>${boardDetail.b_date}</dd>
					</dl>
					<dl>
						<dt>좋아요</dt>
						<dd id="likePlus">${boardDetail.b_likes}</dd>
					</dl>
					<dl>
						<dt>
							<button onclick="likePlus(${boardDetail.b_id})">추천</button>
						</dt>
					</dl>
				</div>
				<div class="cont">${boardDetail.b_content}</div>
			</div>
			<div class="bt_wrap">
				<a href="boardList.do?value=${boardDetail.b_category}&page=${page}"
					class="on">목록</a>
				<c:if test="${member.email == boardDetail.email}">
					<a
						href="boardEdit.jsp?value=${boardDetail.b_category}&valueId=${boardDetail.b_id}&valueLike=${boardDetail.b_likes}&page=${page}">수정</a>
					<a
						href="boardDelete.do?value=${boardDetail.b_category}&ValueCategory=${boardDetail.b_id}&page=${page}">삭제</a>
				</c:if>
			</div>
		</div>
	</div>
	<!-- 댓글 -->
	<div class="card-footer">

		<!-- 해당 게시물의 댓글 리스트들 출력 -->
		<c:forEach var="mvo" items="${commentList}">
			<div class="card-body">
				<p class="card-text">${mvo.cmt_content}</p>
				<p class="card-text">
					<small class="text-muted">${mvo.cmt_date}</small>
				</p>
				<p class="card-text">
					<small class="text-muted">${mvo.email}</small>
				</p>
				<c:if test="${member.email == mvo.email}">
					<a href="commentDelete.do?cmt_id=${mvo.cmt_id}&value=${mvo.b_id}">삭제</a>
				</c:if>
			</div>
		</c:forEach>

		<div class="comments mt-3"></div>
		<div class="form-group">
			<input type="text" id="contentComment" class="form-control" required>
			<br>
		</div>
		<button onclick="Comment(${boardDetail.b_id})" type="button"
			class="btn btn-primary">작성</button>
		<br>
	</div>
	<!-- 댓글 -->

</body>

<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
	<div class="pb-4 mb-4 logo"
		style="border-bottom: 1px solid rgba(226, 175, 24, 0.5);">
		<img id="footerLogo" src="./img/ft_logo.png" alt="">
	</div>
</div>

<div class="container">
	<span class="text-light"><a href="#"><i
			class="fas fa-copyright text-light me-2"></i>BUSTIVAL</a></span> <br> <span><a
		href="#">깃허브 주소</a></span> <br> <a href="https://smhrd.or.kr/">스마트인재개발원</a>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/lightbox/js/lightbox.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<script src="js/main.js"></script>
<script src="js/Ajax.js"></script>

</body>
</html>