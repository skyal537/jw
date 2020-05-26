<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <style type="text/css">
 	.calcontainer{position: relative;}
 	.isCalendarList{display: inline-block;}
 	.resContainer{
 		position: absolute;
 		display: inline-block;
 		
 	}
 	#sidebar{top:0;}
 	.eachStep{padding: 30px;}


	.sticky {
	    position: -webkit-sticky; /* 사파리 브라우저 지원 */
	    position: sticky;
	    display: inline-block;	
	    padding: 10px;
	    top: 100px;
	    left: 80%;
	    z-index: 2;
	    
	}
	.sticky > a{font-size: 30px;}
	
	.side-table{font-size: 20px;}
  </style>
  
	<title></title>
</head>

<body>
<%@include file="/WEB-INF/inc/top_menu.jsp" %>
	
<div class="panel panel-info sticky">
	<table class="side-table">
		<colgroup>
			<col width="30%">
			<col/>
		</colgroup>
		<tr>
			<th>출발</th>
			<td>${product.startDate}</td>
		</tr>
		<tr>
			<th>도착</th>
			<td>${product.endDate}</td>
		</tr>
	</table>
	<br>
	<table class="side-table">
		<colgroup>
			<col width="40%">
			<col/>
		</colgroup>
		<tr>
			<th colspan="2">가격</th>
		</tr>
		<tr>
			<th>성인</th>
			<td style="color: red;"><fmt:formatNumber value="${product.adultPrice}" pattern="#,###" /></td>
		</tr>
		<tr>
			<th>아동</th>
			<td style="color: red;"><fmt:formatNumber value="${product.childPrice}" pattern="#,###" /></td>
		</tr>
		<tr>
			<th>유아</th>
			<td style="color: red;"><fmt:formatNumber value="${product.babyPrice}" pattern="#,###" /></td>
		</tr>
	</table>
	<a href="#" class="btn btn-success sticky" id="btn_res">예약하기</a>
</div>
	
	<div class="container">
		<h1>${product.productName}</h1>
		<div>${product.productId}</div>
		<br>
		<ul class="bxslider">
			<c:forEach var="vo" items="${cal}">
				<c:if test="${not empty vo.spotPic}">
					<div style="display: inline-block"><img alt="" src="${vo.spotPic}" width="300px" height="220px"></div>
				</c:if>
			</c:forEach> 
		</ul>
		<br>
		<table class="grid table table-bordered table-striped hover ">
			<tr>
				<td>여행기간</td>
				<td colspan="4">${product.packagePeriod}</td>
			</tr>
			<tr>
				<td rowspan="2">이용 교통</td>
				<td colspan="4">${product.airLineNm}</td>
			</tr>
			<tr>
				<td>출발항공편 : ${product.airStart}</td>
				<td>출발일 : ${product.startDate}</td>
				<td>도착항공편 : ${product.airEnd}</td>
				<td>도착일 : ${product.endDate}</td>
			</tr>
		</table>
		<br>
		<table class="grid table table-bordered table-striped hover ">
			<tr class="text-center">
				<th>성인</th>
				<th>아동</th>
				<th>유아</th>
			</tr>
			<tr class="text-center">
				<td><fmt:formatNumber value="${product.adultPrice}" pattern="#,###" /></td>
				<td><fmt:formatNumber value="${product.childPrice}" pattern="#,###" /></td>
				<td><fmt:formatNumber value="${product.babyPrice}" pattern="#,###" /></td>
			</tr>
		</table>
		<br>
		<div><pre>${product.notice}</pre></div>
	</div>
	
	<div class="calContainer">
		<div class="isCalendarList">
			<div class="panel panel-default eachStep">
			<c:forEach var="vo" items="${cal}" varStatus="st">
				<c:set var="nextStep" value="${cal[st.index+1].day }"/>
				<c:set var="prevStep" value="${cal[st.index-1].day }"/>
<!-- 					<div class="panel panel-default">-->						
				<div>
					<h2><c:if test="${prevStep ne vo.day}">${vo.day}일차</c:if></h2>
				</div>
					<div class="col-sm-offset-1">
						<div><h4>${vo.calendarTitle}</h4></div>
						<div>${vo.calendarContent}</div>
						<c:if test="${not empty vo.spotPic}">
							<div class="col-sm-offset-1">
								<div><h4>${vo.spotName }</h4></div>
								<div><img alt="" src="${vo.spotPic }" width="200px"></div>
							</div>
						</c:if>
					</div>
				<c:if test="${nextStep > vo.day}">
					<div class="panel panel-default eachStep"></div>
				</c:if>
			</c:forEach>
			</div>
		</div>	<!--cal컨테이너  -->		
	</div>

		
		
<script type="text/javascript">
	$('#btn_res').click(function(){
			if(${empty sessionScope.USER_INFO}) {
				alert("예약하려면 로그인 해주세요");
			} else{
				location.href = "${pageContext.request.contextPath}/res/resForm.do?productId=${product.productId}" ;
			}
	});
</script>

</body>
</html>


