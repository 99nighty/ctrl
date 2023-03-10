<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<link rel="icon" href="images/favicon.ico" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>산오르미</title>

<!-- 네이버 로그인 API -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- link start -->
<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet" />

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/board.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,300"
	rel="stylesheet" type="text/css" />

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css" />
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css" />
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css" />
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css" />
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css" />
<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css" />
<!-- CS Select -->
<link rel="stylesheet" href="css/cs-select.css" />
<link rel="stylesheet" href="css/cs-skin-border.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/sub_layout.css" />
<link rel="stylesheet" href="css/styleguide.css" />
<link rel="stylesheet" href="css/community.css" />
<link rel="stylesheet" href="css/join.css" />
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/like.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!--  모두의 낚시 -->

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<!-- link end -->
<script src="https://kit.fontawesome.com/2fcc7e0e56.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<%-- 헤더시작 --%>
	<jsp:include page="header.jsp" />
	<%-- 헤더끝 --%>

	<!-- end:header-top -->
	<div>
		<div id="mg-fh5co-wrapper">
			<div class="fh5co-hero">
				<div class="toptop"></div>
				<div class="fh5co-cover" data-stellar-background-ratio="0.5">
					<div class="desc">
						<div class="container" id="theme">
							<div class="middlepin">
								<h2 id="throwit">
									<span class="green">#</span>테마<span class="gray">가
										있는</span> 숲길
								</h2>
								<div class="s_4_tag" style="text-align: right">
									<span>#휴식</span> <span>#국가관광지</span> <span>#연인여행</span> <span>#가족여행</span>
									<span>#축제</span> <span>#나홀로여행</span>
								</div>
							</div>
							<div class="row" id="mainpicture">
								<div class="col-sm-5 col-md-5">
									<div class="tabulation animate-box"></div>
									<div class="section_4">
										<div class="layout">
											<input type="hidden" id="srchTag" name="srchTag" value="" />
											<div class="s_4_slide">
												<div class="slide_wrap">
													<div id="wrapping">
														<div class="page">
															<div class="image" id="positions">
																<div class="inside">
																	<img alt="DMZ펀치볼둘레길" src="./images/main1.jpg" />
																</div>
																<div class="inside">
																	<img alt="점봉산 곰배령 산림생태탐방" src="./images/main2.jpg" />
																</div>
																<div class="inside">
																	<img alt="한남시험림탐방" src="./images/main3.jpg" />
																</div>
																<div class="inside">
																	<img alt="백두대간트레일" src="./images/main4.jpg" />
																</div>
																<div class="inside">
																	<img alt="홍릉숲 탐방" src="./images/main5.jpg" />
																</div>
																<div class="inside">
																	<img alt="울진금강소나무숲길" src="./images/main6.jpg" />
																</div>
																<div class="inside">
																	<img alt="(하동군)하동편백자연휴양림" src="./images/main7.jpg" />
																</div>
															</div>
															<br />
															<div class="buttonps">
																<span class="info"> </span>
																<button class="prev">&lt;</button>
																&nbsp;&nbsp;
																<button class="next">&gt;</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<script>
                    (function () {
                      var param = '.s_4_slide',
                        obj = '.item',
                        btn = '.s_4_slide .control',
                        interval = 5000,
                        speed = 300,
                        viewSize = 1,
                        moreSize = 0,
                        dir = 'x',
                        data = 0,
                        auto = false,
                        hover = false,
                        method = 'easeOutCubic',
                        op1 = false;
                      stateScrollObj(
                        param,
                        obj,
                        btn,
                        interval,
                        speed,
                        viewSize,
                        moreSize,
                        dir,
                        data,
                        auto,
                        hover,
                        method,
                        op1,
                      );
                    })();
                    function s4slide_init() {
                      var param = '.s_4_slide',
                        obj = '.item',
                        btn = '.s_4_slide .control',
                        interval = 5000,
                        speed = 300,
                        viewSize = 1,
                        moreSize = 0,
                        dir = 'x',
                        data = 0,
                        auto = false,
                        hover = false,
                        method = 'easeOutCubic',
                        op1 = false;
                      stateScrollObj(
                        param,
                        obj,
                        btn,
                        interval,
                        speed,
                        viewSize,
                        moreSize,
                        dir,
                        data,
                        auto,
                        hover,
                        method,
                        op1,
                      );
                    }
                  </script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--슬라이드배너-->
	<a class="mg-text">산책하기 좋은 산</a>
	<div class="slide-wrapper">
		<ul class="slides">
			<li class="li-1">
				<div id="mg-text">
					<h2>
						<strong>인왕산 339m</strong>
					</h2>
					<br />
					<h4>
						<strong>가볍게 운동하기 좋은 코스</strong>
					</h4>
					<br /> 서울 종로구, 서대문구
				</div>
			</li>
			<li class="li-2">
				<div id="mg-text">
					<h2>
						<strong>아차산 295m</strong>
					</h2>
					<br />
					<h4>
						<strong>쉬운 등산 코스</strong>
					</h4>
					<br /> 서울 중랑구, 경기구리
				</div>
			</li>
			<li class="li-3">
				<div id="mg-text">
					<h2>
						<strong>응봉산 81m</strong>
					</h2>
					<br />
					<h4>
						<strong>야경보러 산책하기 좋은 코스</strong>
					</h4>
					<br /> 서울 성동구
				</div>
			</li>
			<li class="li-4">
				<div id="mg-text">
					<h2>
						<strong>도봉산 740m</strong>
					</h2>
					<br />
					<h4>
						<strong>난이도가 있는 코스</strong>
					</h4>
					<br /> 서울 도봉구, 경기 의정부
				</div>
			</li>
			<li class="li-5">
				<div id="mg-text">
					<h2>
						<strong>대모산 293m</strong>
					</h2>
					<br />
					<h4>
						<strong>능선따라 걷기 좋은 코스</strong>
					</h4>
					<br /> 서울 서초구, 강남구
				</div>
			</li>
			<li class="li-1">
				<div id="mg-text">
					<h2>
						<strong>인왕산 339m</strong>
					</h2>
					<br />
					<h4>
						<strong>가볍게 운동하기 좋은 코스</strong>
					</h4>
					<br /> 서울 종로구, 서대문구
				</div>
			</li>
			<li class="li-2">
				<div id="mg-text">
					<h2>
						<strong>아차산 295m</strong>
					</h2>
					<br />
					<h4>
						<strong>쉬운 등산 코스</strong>
					</h4>
					<br /> 서울 중랑구, 경기구리
				</div>
			</li>
			<li class="li-3">
				<div id="mg-text">
					<h2>
						<strong>응봉산 81m</strong>
					</h2>
					<br />
					<h4>
						<strong>야경보러 산책하기 좋은 코스</strong>
					</h4>
					<br /> 서울 성동구
				</div>
			</li>
			<li class="li-4">
				<div id="mg-text">
					<h2>
						<strong>도봉산 740m</strong>
					</h2>
					<br />
					<h4>
						<strong>난이도가 있는 코스</strong>
					</h4>
					<br /> 서울 도봉구, 경기 의정부
				</div>
			</li>
			<li class="li-5">
				<div id="mg-text">
					<h2>
						<strong>대모산 293m</strong>
					</h2>
					<br />
					<h4>
						<strong>능선따라 걷기 좋은 코스</strong>
					</h4>
					<br /> 서울 서초구, 강남구
				</div>
			</li>
		</ul>
	</div>
	<script>
        var ul = document.querySelector('.slides');
        var slideNumber = document.querySelector('.slides').childElementCount;
        var li = document.querySelector('.slides>li');

        var firstItemClone = ul.firstElementChild.cloneNode(true);
        ul.appendChild(firstItemClone);
        ul.style.width = (slideNumber + 1) * 400 + 'px';

        function move() {
          var i = 0;

          setInterval(function () {
            ul.style.transition = '0.2s';
            ul.style.transform =
              'translate3d(-' + 300 * (i + 1) + 'px, 0px, 0px)';

            i++;

            if (i == slideNumber) {
              setTimeout(function () {
                ul.style.transition = '0s';
                ul.style.transform = 'translate3d(0px, 0px, 0px)';
              }, 201);
              i = 1;
            }
          }, 3000);
        }

        document.addEventListener('DOMContentLoaded', function () {
          move();
        });
      </script>

	<!-- 칸 시작 -->
	<a class="mg-text">내 주변 지도보기</a>
	<div class="centers" style="margin-top: 100px;">
		<div class="letsgo">
			<img src="./images/LetsGo.png" alt="앞으로가는사진" />
		</div>
		<!-- 지도 시작 -->
		<div id="map" class="lolipoli"></div>
		<!-- 지도 끝 -->
	</div>
	<!-- 칸 끝 -->

	<br />

	<!-- 게시글 시작 -->
	<hr />
	<br />
	<div>
		<div style="margin-top: -10%">
			<div class="boximpo2">
				<div class="bottom">
					<ul class="list_wrap">
						<div>
							<div class="left_top_02" style="text-align: center">
								<h3 class="sub_title" style="color: green; margin-bottom: 50px;">커뮤니티
									TOP5</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table" id="dataTable" width="100%"
										cellspacing="0"
										style="font-family: Nunito, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-weight: 400; line-height: 1.5;">
										<thead>
											<tr>
												<th>순번</th>
												<th>제목</th>
												<th>작성일</th>
												<th>조회수</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="vo" items="${best5}">
												<tr>
													<td>${vo.bNum }</td>
													<td><a href="bView.do?bNum=${vo.bNum }">${vo.bTitle }</a></td>
													<td>${vo.bDate }</td>
													<td>${vo.bCnt }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>
			<!-- 게시글 끝 -->

			<!-- 지원시작 -->
			<!-- 게시글 시작 -->
			<div style="margin-top: -10%">
				<div class="boximpo2">
					<div class="bottom">
						<div class="left_top_02" style="text-align: center">
							<h3 class="sub_title" style="color: green; margin-bottom: 50px;">등산
								관련 NEWS</h3>
							<hr />
						</div>
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<div
								style="width: 310px; height: 500px; padding: 30px; text-align: center; background-color: white; border: 1px solid white; float: left; margin-left: 50px; margin-right: 50px;">
								<p style="font-style: italic; color: #617df8">
									2023.01.05 <br /> 07:45<br /> <br />
								</p>
								겨울 등산<br /> 겨울 산행은 찬바람과 낮은 기온으로 인한 동상이나<br /> 저체온증을 주의해야 한다.<br />
								무엇일까?<br /> <br /> ◇보온에 신경 써야<br /> <br /> 겨울 등산<br /> 겨울
								산행은 찬바람과 낮은 기온으로 인한 동상이나<br /> 저체온증을 주의해야 한다.<br />
							</div>
							<div
								style="width: 310px; height: 500px; padding: 30px; text-align: center; background-color: white; border: 1px solid white; float: left; margin-right: 50px;">
								<p style="font-style: italic; color: #617df8">
									2022-12-01 <br /> 06:50<br /> <br />
								</p>
								코로나19 이후 <br /> 젊은 층 사이에서도 <br /> 등산이 인기 야외활동으로 <br /> 자리
								잡았는데요. <br /> 관련 용품 수입도 1년 새 급증한 걸로 조사됐습니다. <br /> <br /> 올해
								들어 지난달까지 수입된 등산용품은 작년보다 74% 늘어난 4천300만 달러, <br /> 우리 돈 565억 원
								규모를 기록했습니다.
							</div>
							<div
								style="width: 310px; height: 500px; padding: 30px; text-align: center; background-color: white; border: 1px solid white; float: left; margin-right: 50px;">
								<p style="font-style: italic; color: #617df8">
									2022-09-08 <br /> 07:45<br />
								</p>
								<br /> 국민권익위, 가을철 등산객 ‘등산 사고’ <br /> 관련 민원 예보 발령 <br /> 등산로
								정비, 안전 시설물 점검·보수 등 민원 다수 <br /> 발생 예상돼...관계기관 선제 대응 당부 <br />
								<br /> 근 매년 증가하고 있는 가을철 ‘등산 사고’ 관련 민원을 분석한 결과, 위험요인 제거 등 등산로 정비
								요청, 안전 시설물 설치 점검·보수 등의 민원이 많은 것으로 나타났다.
							</div>
							<div
								style="width: 310px; height: 500px; padding: 30px; text-align: center; background-color: white; border: 1px solid white; float: left; margin-right: 50px;">
								<p style="font-style: italic; color: #617df8">
									2022.11.21 <br /> 09:30<br />
								</p>
								<br /> ‘산 중독증 <br /> mountain addiction’ <br /> 이라는 병명이 지정되고
								<br /> 그 증상까지 처음으로 <br /> 진단한 연구가 발표돼 화제다. <br /> <br />
								오스트리아 인스브루크의대 <br /> 정신과 카타리나 휘프너 교수팀이 <br /> 2019~2020년에
								335명을 대상으로 <br /> 실시한 연구로 유럽정신 <br /> 임상신경과학연구집에 올해 게재됐다
							</div>
						</div>
					</div>
				</div>
			</div>
			<br />

			<!-- 지원 끝 -->

			<br /> <br /> <br />
		</div>
	</div>
	<img
		style="display: inline-flex; margin-bottom: 0px; margin-left: 0; margin-right: 0; width: 100%; height: auto;"
		src="./images/footer.png" alt="background" />

	<!-- END fh5co-page -->

	<!-- END fh5co-wrapper -->

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="./js/like.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>

	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAuYIdumyBuSyjdOXeWTh5CnO8wBL9haYY&callback=initMap&v=weekly"
		defer></script>
	<script src="js/google_mainmap.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	<!-- 슬라이드 추가 -->
	<script src="js/slide.js"></script>



</body>

<%-- 푸터시작 --%>
<jsp:include page="footer.jsp" />
<%-- 푸터끝 --%>

</html>