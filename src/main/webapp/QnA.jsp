<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>게시글 관리</title>

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
<link rel="shortcut icon" href="./images/favicon.ico" />
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
<!--  모두의 낚시 -->

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/nextpage.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<!-- link end -->
</head>

<body id="page-top">

	<%-- 헤더시작 --%>
	<jsp:include page="header.jsp" />
	<%-- 헤더끝 --%>

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- End of Topbar -->

				<div class="freeboard">
					<div class="content">
						<div class="top">
							<div class="left_top">
								<div class="left_top_01"></div>
							</div>
						</div>
					</div>
				</div>
				<div style="padding: 0px 200px 50px">
					<div class="bottom">
						<ul class="list_wrap">
							<div class="left_top_02">
								<h5 class="sub_eng mt">QnA</h5>
								<h3 class="sub_title">자주 묻는 질문</h3>
							</div>
							<!-- DataTales Example -->
							<div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table" id="dataTables" width="100%"
											cellspacing="0">
											<thead>
												<tr>
													<th class="sorting_con">순번</th>
													<th>제목</th>
													<th class="sorting_con">조회수</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="dto" items="${qList }">
													<tr>
														<td>${dto.qNum }</td>
														<td><a href="qView.do?qNum=${dto.qNum }">${dto.qTitle }</a></td>
														<td>${dto.qCnt }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</ul>
					</div>
					<!-- /.container-fluid -->
					<div class="button_wrap clearfix">
						<a href="writeBoardQnA.do?id=${sessionScope.id}"
							class="write_btn m_write_btn">작성하기</a>
					</div>
				</div>
			</div>

			<%-- 푸터시작 --%>
			<jsp:include page="footer.jsp" />
			<%-- 푸터끝 --%>

		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="main.do">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>
</body>
</html>