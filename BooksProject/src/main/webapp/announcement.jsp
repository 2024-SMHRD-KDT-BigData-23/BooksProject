<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL/EL을 인코딩해주는 구문 -->
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<i class="fas fa-user fa-2x"></i>
<script src="https://kit.fontawesome.com/fdb678099a.js"
	crossorigin="anonymous"></script>
</head>

<body id="notice">

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

	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">공지사항</h1>
	</div>

	<div class="board_wrap">
		<div class="board_title">
			<img class="notice-img" src="./img/notice.png" alt=""> <br>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<c:forEach var="mvo" items="${boardList}">
					<div>
						<div class="num">${mvo.b_id}</div>
						<div class="title">
							<a href="boardDetail.do?value=${mvo.b_id}&page=${page}">${mvo.b_title}</a>
						</div>
						<div class="writer">${mvo.nick}</div>
						<div class="date">${mvo.b_date}</div>
						<div class="count">${mvo.b_views}</div>
						<div class="like">${mvo.b_likes}</div>
					</div>
				</c:forEach>

			</div>
			<div class="board_page">
				<%
				int startNum = (int) request.getAttribute("startNum");
				int endNum = (int) request.getAttribute("endNum");
				int prevPage = (int) request.getAttribute("page") - 1;
				int nextPage = (int) request.getAttribute("page") + 1;
				int LargeNextPage = ((int) request.getAttribute("page") / 5 + 1) * 5 + 1;
				int LargePrevPage = (int) request.getAttribute("page") / 5 * 5;
				%>
				<c:if test="${pagePrevChecking == 'Y'}">
					<script type="text/javascript">
						alert("이전 페이지가 없습니다");
					</script>
					<%
					session.setAttribute("pagePrevChecking", "N");
					%>

				</c:if>
				<c:if test="${pageNextChecking == 'Y'}">
					<script type="text/javascript">
						alert("다음 페이지가 없습니다");
					</script>
					<%
					session.setAttribute("pageNextChecking", "N");
					%>

				</c:if>

				<!-- 아래 ${page} 써놓은게 현재 페이지입니다 -->
				<a class="bt first">${page}page </a> <a
					href="pagePrevCheck.do?value=${b_category}&page=<%=prevPage%>"
					class="bt prev"></a>
				<%
				for (int i = startNum; i < startNum + endNum; i++) {
				%>
				<a href="boardList.do?value=${b_category}&page=<%=i%>"
					class="num on"><%=i%></a>
				<%
				}
				%>
				<a href="pageNextCheck.do?value=${b_category}&page=<%=nextPage%>"
					class="bt next">></a>
			</div>

			<c:if test="${member.email == 'admin' && member.pw == '12345' }">
				<div class="bt_wrap">
					<a href="boardWrite.jsp?value=${boardList.get(0).getB_category()}"
						class="on">등록</a>
				</div>
			</c:if>
		</div>
	</div>

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
</body>

</html>