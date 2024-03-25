<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <i class="fas fa-user fa-2x"></i>
    <script src="https://kit.fontawesome.com/fdb678099a.js" crossorigin="anonymous"></script>

</head>


<body>

    <!-- Navbar start -->
    <div class="container-fluid fixed-top">
        <div class="container px-0">
            <nav class="navbar navbar-light bg-white navbar-expand-xl">
                <a href="index.html" class="navbar-brand">
                    <img src="./img/logo2.png" alt="" class="logoimg">
                </a>
                <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars text-primary"></span>
                </button>
                <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                    <div class="navbar-nav mx-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-item nav-link dropdown-toggle" data-bs-toggle="dropdown">BUSTIVAL</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="#" class="dropdown-item">신청게시판</a>
                                <a href="#" class="dropdown-item">요청게시판</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-item nav-link dropdown-toggle" data-bs-toggle="dropdown">CONCERT</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="#" class="dropdown-item">발라드</a>
                                <a href="#" class="dropdown-item">아이돌</a>
                                <a href="#" class="dropdown-item">트로트</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-item nav-link dropdown-toggle" data-bs-toggle="dropdown">BOARD</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="board.html" class="dropdown-item">자유게시판</a>
                                <a href="board.html" class="dropdown-item">질문게시판</a>
                                <a href="board.html" class="dropdown-item">후기게시판</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">INFO CENTER</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="qna.html" class="dropdown-item">Q&A</a>
                                <a href="announcement.html" class="dropdown-item">공지사항</a>
                                <a href="refund_Policy.html" class="dropdown-item">환불규정</a>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex m-3 me-0">
                        <!-- 로그인X 시 나타날 회원가입 버튼 -->
                        <a href="signin.html" class="my-auto">
                            <i class="fa-solid fa-pen-nib fa-2xl"></i>
                        </a>
                        <!-- 로그인X 시 나타날 로그인 버튼 -->
                        <a href="login.html" class="my-auto">
                            <i class="fas fa-user fa-2x"></i>
                        </a>
                        <!--로그인 시 나타날 마이페이지 버튼-->
                        <a href="myPage.html" class="my-auto">
                            <i class="fas fa-user fa-2x"></i>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->




    <!-- Single Page Header start -->
    <div class="container-fluid page-header py-5">
        <h1 class="text-center text-white display-6">비밀번호 변경</h1>
    </div>
    <!-- Single Page Header End -->

    <br>
    <br>
    <div class="container mb-4 main-container">
        <div class="row">
            <div class="col-lg-4 pb-5">
                <!-- Account Sidebar-->
                <div class="author-card pb-3">
                    <div class="author-card-profile">
                        <div class="author-card-details">
                            <h4 class="author-card-name text-lg">Nickname</h4>
                        </div>
                    </div>
                </div>
                <div class="wizard">
                    <nav class="list-group list-group-flush">
                        <a class="list-group-item" href="myPage.html" tagert="__blank"><i
                            class="fa fa-tag mr-1 text-muted"></i>마이페이지</a>
                    <a class="list-group-item" href="userInfoEdit.html" target="__blank"><i
                            class="fa fa-user text-muted"></i> 회원정보 수정</a>
                    <a class="list-group-item" href="userPwEdit.html" tagert="__blank"><i
                            class="fa fa-heart mr-1 text-muted"></i>비밀번호 변경</a>
                    <a class="list-group-item" href="#" target="__blank"><i class="fa fa-user text-muted"></i>
                        회원탈퇴</a>
                    </nav>
                </div>
            </div>


            <!-- user profile 개인정보 수정란 -->
            <div class="col-lg-8 pb-5">
                <div class="d-flex justify-content-end pb-3">
                    <form action="myPage.html" id="edit-form">

                        <label for="nowPw">기존 비밀번호</label>
                        <input type="password" class="form-control" value="" id="nPw" placeholder="기존의 비밀번호를 입력해주세요">

                        <label for="nickname">새로운 비밀번호</label>
                        <input type="password" class="form-control" value="" id="ePw" placeholder="새로운 비밀번호를 입력해주세요">

                        <label for="nickname">비밀번호 확인</label>
                        <input type="password" class="form-control" value="" id="ePwC" placeholder="비밀번호를 한번 더 입력해주세요">

                        <input type="submit" value="변경하기">
                    </form>
                </div>
            </div>
        </div>
    </div>

 <!-- Footer Start -->
 <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
    <div class="pb-4 mb-4 logo" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
        <img id="footerLogo" src="./img/ft_logo.png" alt="">
    </div>
    <!-- Footer End -->

    <!-- Copyright Start -->
    <div class="container">
                <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>BUSTIVAL</a></span>
                <br>
                <span><a href="#">깃허브 주소</a></span>
                <br>
                <a href="https://smhrd.or.kr/">스마트인재개발원</a>
                <!--깃허브 주소 넣기.-->
    </div>
    <!-- Copyright End -->





    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>


    <!-- Template Javascript -->
    <script src="js/main.js"></script>

</body>

</html>