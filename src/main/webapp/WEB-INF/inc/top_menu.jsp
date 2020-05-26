<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


    <%-- <link href="${pageContext.request.contextPath}/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css"/>" rel="stylesheet">
   		 <link href="<c:url value="/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css"/>" rel="stylesheet">
 --%>    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->


	<!--JQuery  -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

	<!-- 부트스트랩 -->
	<link href="<%=request.getContextPath()%>/bootstrap-3.3.2/css/bootstrap.css" rel="stylesheet">
	<script src="<%=request.getContextPath()%>/bootstrap-3.3.2/js/bootstrap.js"></script>

	<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet">

	<!--font-awesome  -->
	<link href="<%=request.getContextPath()%>/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">





	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top navbar-light">
		<div class="container">
			<div class="navbar-header">
<!-- 				<button type="button" class="navbar-toggle collapsed" -->
<!-- 					data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
<!-- 					<span class="sr-only">Toggle navigation</span> -->
<!-- 					<span class="icon-bar"></span> -->
<!-- 					<span class="icon-bar"></span> -->
<!-- 					<span class="icon-bar"></span> -->
<!-- 				</button> -->
				<a class="navbar-brand" style="font-size: 25px;" href="${pageContext.request.contextPath }">
				<i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp;파랑풍선</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/tour/tPackList.do?searchCategory=EUN"> 북유럽 </a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tPackList.do?searchCategory=EUW"> 서유럽 </a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tPackList.do?searchCategory=EUE"> 동유럽 </a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tPackList.do?searchCategory=EUS"> 남유럽 </a></li>
				</ul>	
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${empty sessionScope.USER_INFO}">
						<li><a
							href="${pageContext.request.contextPath }/login/login.do">
							<i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;&nbsp;로그인</a>
						</li>
					</c:if>

<!-- 로그인처리 -->
					<c:if test="${not empty sessionScope.USER_INFO}">
						<li><a href="#about">${sessionScope.USER_INFO.userName}님</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">
							<i class="fa fa-user" aria-hidden="true"></i>&nbsp;마이페이지
							<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="${pageContext.request.contextPath }/member/memberEdit.do?memId=${sessionScope.USER_INFO.userId}">
										<i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;&nbsp;개인정보수정</a>
								</li>
								<li><a href="${pageContext.request.contextPath }/res/resList.do">
										<i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp;&nbsp;예약확인 </a>
								</li>
								<li><a href="${pageContext.request.contextPath }/post/postList.do">
										<i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;쪽지함 </a>
								</li>
							</ul>
						</li>


						<!-- 0:시스템관리자, 1:운영자 -->
						<c:if test="${USER_INFO.authCode le '1'}">
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
									<i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;회원관리
									<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath }/member/memberMgList.do">
											<i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;&nbsp;회원정보리스트 </a>
									</li>
									<li><a href="${pageContext.request.contextPath }/res/resMg.do">
											<i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp;&nbsp;예약확인/관리 </a>
									</li>
									<li><a href="${pageContext.request.contextPath }/post/postList.do">
											<i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;쪽지함 </a>
									</li>
								</ul>
							</li>
						</c:if>


						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath }/login/logout.do">
							<i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;로그아웃</a>
						</li>

					</c:if>
					
<!-- /로그인처리 -->
					<c:if test="${empty sessionScope.USER_INFO}">
						<li><a href="${pageContext.request.contextPath }/member/memberForm.do">
							<i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;회원가입</a>
						</li>
					</c:if>
				</ul>
			</div>

			<!--/.nav-collapse -->
		</div>
	</nav>
